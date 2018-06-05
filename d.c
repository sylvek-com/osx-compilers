#include <stdio.h>
int main()
{
	_Decimal32 x,y;

	x = 1.df;
	x /= 10.df;
	y = x;
	y *= 10.df;
	printf("%Hf %Hf\n",x,y);
	return 0;
}
