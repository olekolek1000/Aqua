#include "vga.h"
#define SCREEN_HEIGHT 25
#define SCREEN_WIDTH 80

static u16int* vga_mem;
char* vga_buffer = (char*)0xb8000;
 
void clear() {
	unsigned short j = 0;
 
	while(j < 80 * 25 * 2) {
		vga_buffer[j] = ' ';
		vga_buffer[j+1] = 0x07;
		j += 2;
	}
}
 
void putchar(char character) {
	unsigned short i = 0;
	while(vga_buffer[i]!=' ') {
		i += 2;
	}
	vga_buffer[i] = character;
}

void puts(const char* string) {
	unsigned short i = 0;
 
	while(string[i] != '\0') {
		putchar(string[i]);
		i += 1;
 	}
}

void color(uint16_t color) {
	unsigned short i = 0;
	while(i < 80 * 25 * 2) {
		vga_buffer[i+1] = color;
		i += 2;
	}
}
static void vga_scroll()
{
	int i;
	for (i = 0; i < SCREEN_WIDTH * (SCREEN_HEIGHT - 1); ++i)
		vga_mem[i] = vga_mem[i + SCREEN_WIDTH];

	for(i = 0; i < SCREEN_WIDTH; ++i)
		vga_mem[SCREEN_WIDTH * (SCREEN_HEIGHT - 1) + i] = 3872; 
}
