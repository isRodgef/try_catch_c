#ifndef CEXCEPTION_H
# define CEXCEPTION_H

#include <setjmp.h>


typedef struct{
	
	char message[256];
	unsigned char status;
	void *data;
	jmp_buf buf;
	
	
}exception;

void try(int cond,void (*to_execute),void (*set_fun_ptr)(exception),(*get_fun_ptr)(exception), exception* e);
void catch(void (*fun_ptr)(exception), exception e); 
 
#endif
