CC=x86_64-w64-mingw32-gcc
#CFLAGS=-lwow64 -lwow64win -lwow64cpu -O2
CFLAGS=-O2

OBJECTS = pp3.o pp_serial.o pp_utils.o pp_progtools.o

pp: $(OBJECTS)
	$(CC) $(CFLAGS) -o pp $(OBJECTS)
	strip pp

%.o: %.c
	$(CC) $(CFLAGS) -c $*.c

#pp3.o: pp3.c
#	$(CC) $(CFLAGS) -Wno-parentheses-equality -c pp3.c
#	$(CC) $(CFLAGS) -c pp3.c

clean:
	rm pp *.o
