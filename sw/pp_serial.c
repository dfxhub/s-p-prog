//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
//               serial IO interfaces for Linux and windows
//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
#include <stdlib.h>
#include <fcntl.h>
#include <stdarg.h>
#include <ctype.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
#include <string.h>

#include "pp_globals.h"
#include "pp_utils.h"
#include "pp_serial.h"

char * COM = NULL;
int baudRate = 115200;

#if defined(__linux__) || defined(__APPLE__)
	
#include <termios.h>

unsigned int get_unix_baud()
{
    switch (baudRate) {
    case 9600:
        return B9600;
    case 19200:
        return B19200;
    case 38400:
        return B38400;
    case 57600:
        return B57600;
    case 115200:
        return B115200;
#if defined(__linux__)
    case 230400:
        return B230400;
    case 460800:
        return B460800;
    case 500000:
        return B500000;
    case 576000:
        return B576000;
    case 921600:
        return B921600;
    case 1000000:
        return B1000000;
    case 1152000:
        return B1152000;
#endif
    default:
        return B115200;
	}
}

void initSerialPort()
    {
    // baudRate=B57600;
    if (verbose>2)
        printf("Opening: %s at %d\n",COM,baudRate);
    com =  open(COM, O_RDWR | O_NOCTTY | O_NDELAY);
    if (com <0) comErr("Failed to open serial port");

    struct termios opts;
    memset (&opts,0,sizeof (opts));

    fcntl(com, F_SETFL, 0);
    if (tcgetattr(com, &opts)!=0) printf("Err tcgetattr\n");

    cfsetispeed(&opts, get_unix_baud());
    cfsetospeed(&opts, get_unix_baud());
    opts.c_lflag  &=  ~(ICANON | ECHO | ECHOE | ISIG);

    opts.c_cflag |=  (CLOCAL | CREAD);
    opts.c_cflag &=  ~PARENB;
    opts.c_cflag &= ~CSTOPB;
    opts.c_cflag &=  ~CSIZE;
    opts.c_cflag |=  CS8;
    opts.c_oflag &=  ~OPOST;
    opts.c_iflag &=  ~INPCK;
    opts.c_iflag &=  ~ICRNL;		//do NOT translate CR to NL
    opts.c_iflag &=  ~(IXON | IXOFF | IXANY);
    opts.c_cc[ VMIN ] = 0;
    opts.c_cc[ VTIME ] = 10;//0.1 sec
    if (tcsetattr(com, TCSANOW, &opts) != 0)
        {
        perror(COM);
        printf("set attr error");
        // abort();
		clean_exit(-1);
        }
    tcflush(com,TCIOFLUSH); // just in case some crap is the buffers
    }


void putByte(int byte)
    {
    char buf = byte;
    if (verbose>3) flsprintf(stdout,"TX: 0x%02X\n", byte);
    int n = write(com, &buf, 1);
    if (n != 1) comErr("Serial port failed to send a byte, write returned %d\n", n);
    }


void putBytes (unsigned char * data, int len)
    {

    int i;
    for (i=0; i<len; i++)
        putByte(data[i]);
    /*
    	if (verbose>3)
    		flsprintf(stdout,"TXP: %d B\n", len);
    int n = write(com, data, len);
    	if (n != len)
    		comErr("Serial port failed to send %d bytes, write returned %d\n", len,n);
    */
    }

int getByte()
    {
    char buf;
    int n = read(com, &buf, 1);
    if (verbose>3) flsprintf(stdout,n<1?"RX: fail\n":"RX:  0x%02X\n", buf & 0xFF);
    if (n == 1) return buf & 0xFF;

    comErr("Serial port failed to receive a byte, read returned %d\n", n);
    return -1; // never reached
    }
	
#else
	
#include <windows.h>

HANDLE port_handle;

void initSerialPort()
    {

    char mode[40],portname[20];
    COMMTIMEOUTS timeout_sets;
    DCB port_sets;
    strcpy(portname,"\\\\.\\");
    strcat(portname,COM);
    port_handle = CreateFileA(portname,
                              GENERIC_READ|GENERIC_WRITE,
                              0,                          /* no share  */
                              NULL,                       /* no security */
                              OPEN_EXISTING,
                              0,                          /* no threads */
                              NULL);                      /* no templates */
    if(port_handle==INVALID_HANDLE_VALUE)
        {
        printf("unable to open port %s -> %s\n",COM, portname);
        // exit(0);
		clean_exit(0);
        }
    //strcpy (mode,"baud=57600 data=8 parity=n stop=1");
	sprintf(mode,"baud=%d data=8 parity=n stop=1", baudRate);
    memset(&port_sets, 0, sizeof(port_sets));  /* clear the new struct  */
    port_sets.DCBlength = sizeof(port_sets);

    if(!BuildCommDCBA(mode, &port_sets))
        {
        printf("dcb settings failed\n");
        CloseHandle(port_handle);
        // exit(0);
		clean_exit(0);
        }

    if(!SetCommState(port_handle, &port_sets))
        {
        printf("cfg settings failed\n");
        CloseHandle(port_handle);
        // exit(0);
		clean_exit(0);
        }

    timeout_sets.ReadIntervalTimeout         = 1;
    timeout_sets.ReadTotalTimeoutMultiplier  = 1000;
    timeout_sets.ReadTotalTimeoutConstant    = 1;
    timeout_sets.WriteTotalTimeoutMultiplier = 1000;
    timeout_sets.WriteTotalTimeoutConstant   = 1;

    if(!SetCommTimeouts(port_handle, &timeout_sets))
        {
        printf("timeout settings failed\n");
        CloseHandle(port_handle);
        // exit(0);
		clean_exit(0);
        }


    }
	
void putByte(int byte)
    {
    int n;
    if (verbose>3) flsprintf(stdout,"TX: 0x%02X\n", byte);
    WriteFile(port_handle, &byte, 1, (LPDWORD)((void *)&n), NULL);
    if (n != 1) comErr("Serial port failed to send a byte, write returned %d\n", n);
    }

void putBytes (unsigned char * data, int len)
    {
    /*
    int i;
    for (i=0;i<len;i++)
    	putByte(data[i]);
    */
    int n;
    WriteFile(port_handle, data, len, (LPDWORD)((void *)&n), NULL);
    if (n != len) comErr("Serial port failed to send a byte, write returned %d\n", n);
    }



int getByte()
    {
    unsigned char buf[2];
    int n;
    ReadFile(port_handle, buf, 1, (LPDWORD)((void *)&n), NULL);
    if (verbose>3) flsprintf(stdout,n<1?"RX: fail\n":"RX:  0x%02X\n", buf[0] & 0xFF);
    if (n == 1) return buf[0] & 0xFF;
    comErr("Serial port failed to receive a byte, read returned %d\n", n);
    return -1; // never reached
    }
#endif


