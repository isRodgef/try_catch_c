#include "cexception.h"
#include <setjmp.h>
#include <string.h>

void catch(void (*get_fun_ptr)(exception), exception e)
{
	get_fun_ptr(e);
}

void try(void (*set_fun_ptr)(exception),(*get_fun_ptr)(exception), exception* e)
{
	if (cond){
		set_fun_ptr(e);
		setjmp();
	}
		
		
}


int main()
{
	
}
