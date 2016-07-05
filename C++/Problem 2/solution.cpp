#include <iostream>

using namespace std;

long const MAX_VAL_FIB = 4000000; //Long's can store 2^32 should be fine for this purpose.

bool isEven (long value)
{
	return (value % 2 == 0);
}

int main (int argc, char ** argv)
{
	int sum = 0;
	long a = 1;
	long b = 0;
	long c = 0;
	for (;;)
	{
		if (c >= MAX_VAL_FIB){break;}

		c = a + b;
		a = b;
		b = c;

		if (isEven(c)){sum += c;}
	}

	cout << "Sum: " << sum << endl;
}