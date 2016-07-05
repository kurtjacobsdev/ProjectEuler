#include <iostream>

using namespace std;

bool isDivisibleBetweenBounds(int lower_bound, int upper_bound, int target)
{
	for (int i = lower_bound; i < upper_bound; i ++)
	{
		if (target % i != 0)
		{
			return false;
		}
	}
	return true;
}

int main (int argc, char **argv)
{
	int lower_bound = 1;
	int upper_bound = 20;

	int target = upper_bound*2;
	for (;;)
	{
		bool isDiv = isDivisibleBetweenBounds(lower_bound,upper_bound,target);
		if (isDiv)
		{
			cout << target << endl;
			break;
		}
		target++;
	}
}