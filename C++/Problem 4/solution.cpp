#include <iostream>
#include <string.h>
#include <algorithm>

using namespace std;

bool isPalindrome(long number)
{
	string s = to_string(number);
	int len = s.length()/2;

	string p1 = s.substr(0,len);
	string p2 = s.substr(s.length()-len,len);
	reverse(p1.begin(),p1.end());

	bool c = p1.compare(p2);

	if (c == 0)
		return true;
	else
		return false;
}

int main (int argc, char **argv)
{
	long max_p = -1;

	for (long i = 100; i <= 999; i ++)
	{
		for (long j = 100; j <= 999; j++)
		{
			long multi = i*j;
			if (isPalindrome(multi))
			{
				if (multi > max_p)
				{
					max_p = multi;
				}
			}
		}
	}

	cout << max_p << endl;
}