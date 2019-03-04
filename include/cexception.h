#ifndef CEXCEPTION_H
# define CEXCEPTION_H

typedef struct{
	
	char message[256];
	int depth;
	char status;
	void *data;
	
}exception;

void try();

void catch(void (*fun_ptr)(exception) ,exception e);
 
#endif
