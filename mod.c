#include "calc.h"
#include "mod.h"

int mod_fun(char* buf, int len) {
	return -calc_fun(buf, len, 0);
}
