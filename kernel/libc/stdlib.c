#include <stdlib.h>
#include "debug/debug.h"

__attribute__((noreturn))
void abort(void) {
	asm("hlt");
	__builtin_unreachable();
}

//random

int rand(void) {
	next = next * 1103515245 + 12345;
	return (unsigned int)(next / 65536) % 32768;
}

void srand(uint32_t seed) {
	next = seed;
}
