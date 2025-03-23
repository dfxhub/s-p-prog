#pragma once

void clean_exit(int rv);
void sleep_ms (int num);
int is_empty (unsigned char * buff, int len);
void printbin(unsigned int num, unsigned char len);
size_t getlinex(char **lineptr, size_t *n, FILE *stream);

void comErr(char *fmt, ...);
void flsprintf(FILE* f, char *fmt, ...);

void parseArgs(int argc, char *argv[]);

void listCPUtype(void);
int setCPUtype(char* cpu);


