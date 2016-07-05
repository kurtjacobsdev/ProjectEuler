#include <iostream>
#include <vector>

using namespace std;

bool isPrime (long value)
{
	if (value == 0){return false;}
	if (value == 1){return false;}
	for (long i = 2; i < value; i++)
	{
		if (value % i == 0)
		{
			return false;
		}
	}
	return true;
}

int main (int argc, char ** argv)
{
	long long test_v = 600851475143;
	long long idx = 0;
	for (;;)
	{
		idx++;
		if (isPrime(idx))
		{
			if (test_v % idx == 0)
			{
				test_v = test_v / idx;
			}
		}

		if (test_v == 1){cout << idx << endl; break;}
	}
}