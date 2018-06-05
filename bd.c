#include <stdio.h>
int main()
{
	union {
		char b[16];
		long double d;
	} t;
	int i,j;

	for (i = 0; i < 16; ++i)
		t.b[i] = 0xaa;
	t.d = 1;
	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 16; ++j)
			printf("%02hhx",t.b[j]);
		printf(" %24.12Le\n",t.d);
		t.d /= 10;
		t.d += 1;
	}
	return 0;
}
