#include <iostream>
#include <cmath>

using namespace std;

long sum_square(int lb, int up)
{
	long sum = 0;
	for (long i = lb; i <= up; i++)
	{
		sum += pow(i,2);
	}
	return sum;
}

long square_sum(int lb, int up)
{
	long sum = 0;
	for (long i = lb; i <= up; i++)
	{
		sum += i;
	}
	return pow(sum,2);
}

int main (int argc, char **argv)
{
	cout << square_sum(1,100) - sum_square(1,100) << endl;
}