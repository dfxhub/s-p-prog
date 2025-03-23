#pragma once

#if defined(__linux__) || defined(__APPLE__)

unsigned int get_unix_baud();

#endif

void initSerialPort(void);
void putByte(int byte);
void putBytes (unsigned char * data, int len);
int getByte(unsigned char wait_for);

