#ifndef CEXCEPTION_H
# define CEXCEPTION_H

typedef struct{
	
	char message[256];
	int depth;
	char status;
	
}exception;

void try();

void catch(void (*fun_ptr)(exception))
 
#endif
