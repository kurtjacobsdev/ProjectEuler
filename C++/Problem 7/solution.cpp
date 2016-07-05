#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

const long SIEVE_SIZE = 200000;
const int FLAG_PRIME = 0;
const int FLAG_NOT_PRIME = 1;

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

void mark_sieve(vector<long>& sieve, long value)
{
	long ss = sieve.size();
	long sq_v = 2;
	long t_value = value;
	while (true)
	{
		if (t_value > ss){break;}
		sieve[t_value] = FLAG_NOT_PRIME;
		t_value = pow(value,sq_v);
		sq_v++;
	}
}

int get_target_idx(vector<long>& sieve, long target_idx)
{
	long ss = sieve.size();

	long index = 0;
	for (long i = 0; i < ss; i ++)
	{
		if (sieve[i] == FLAG_PRIME)
		{
			index++;
			if (index == target_idx){return i;}
		}
	}

	return -1;
}

int main (int argc, char **argv)
{
	vector<long> sieve_v (SIEVE_SIZE,0);
	sieve_v[0] = FLAG_NOT_PRIME;
	sieve_v[1] = FLAG_NOT_PRIME;

	for (long i = 2; i <= SIEVE_SIZE; i ++)
	{
		if (sieve_v[i] == FLAG_PRIME)
		{
			if (!isPrime(i))
			{
				mark_sieve(sieve_v,i);
			}
		}
	}

	long idx = get_target_idx(sieve_v,10001);
	cout << idx << endl;
}