func multipleSum(upperBound:Int) -> (Int)
{
	var sum:Int = 0;
	for x in (0..<upperBound)
	{
		if (x % 3 == 0)
		{
			sum += x;
		}
		else if(x % 5 == 0)
		{
			sum += x;
		}
	}
	return sum;
}

let multiple_sum = multipleSum(upperBound:1000);
print (multiple_sum)