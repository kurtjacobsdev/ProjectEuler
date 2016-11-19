func isFactor(_ value:Int, withDivisor:Int) -> (Bool)
{
  if (value % withDivisor == 0)
  {
    return true;
  }
  return false;
}

func isPrime(_ value:Int) -> (Bool)
{
  if (value == 0 || value == 1){return false;}
  for x in (2..<value)
  {
    if (value % x == 0)
    {
      return false;
    }
  }
  return true;
}

var target:Int = 600851475143;
var factor:Int = 2;

while(true)
{
  if (isPrime(factor))
  {
    if (isFactor(target,withDivisor:factor))
    {
      target = target / factor;
    }
  }
  
  if (target == 1)
  {
    print (factor);
    break;
  }
  
  factor+=1;
}
