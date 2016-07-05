#include <iostream>

using namespace std;

int approach_1(int until)
{
	int sum = 0;
	for (int i = 0; i < until; i ++)
	{
		if (i % 3 == 0)
		{
			sum = sum + i;
		}
		else if (i % 5 == 0)
		{
			sum = sum + i;
		}
	}
	return sum;
}

int approach_2(int until)
{
	int sum = 0;
	int idx = 1;
	while (true)
	{
		int t_val = 3*idx;
		int f_val = 5*idx;
		if (t_val < until)
		{
			sum = sum + t_val;
		}
		if (f_val < until && (f_val % 3 != 0))
		{
			sum = sum + f_val;
		}
		if (f_val >= until && t_val >= until){break;}

		idx++;
	}
	return sum;
}

int main (int argc, char ** argv)
{
	cout << approach_1 (10) << endl;
	cout << approach_1 (1000) << endl;
	cout << approach_2 (10) << endl;
	cout << approach_2 (1000) << endl;
	return 0;
}