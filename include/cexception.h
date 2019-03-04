#ifndef CEXCEPTION_H
# define CEXCEPTION_H

typedef struct{
	
	char message[256];
	unsigned char status;
	void *data;
	
}exception;

void try(void (*set_fun_ptr)(exception),(*get_fun_ptr)(exception), exception* e);
void catch(void (*fun_ptr)(exception), exception e); 
 
#endif
