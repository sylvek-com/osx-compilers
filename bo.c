#include <stdio.h>
union {
	char b[4];
	int w;
} t = { 0x11, 0x22, 0x33, 0x44 };
int main()
{
	return printf("%08x,%i\n",t.w,(int)sizeof(void*));
}
