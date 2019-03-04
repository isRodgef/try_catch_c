#include "cexception.h"

void catch(void (*fun_ptr)(exception), exception e)
{
	fun_ptr(e);
}
