func isPrime(_ value:Int) -> (Bool)
{
  if (value == 0 || value == 1){return false};
  for x in 2..<value
  {
    if (value % x == 0)
    {
      return false;
    }
  }
  return true;
}

func markSieve(_ value:Int, withSieve seive:inout Array<Int>) -> (Void)
{
  let sieveSize = seive.count;
  var multiplier = value;
  while (multiplier < sieveSize)
  {
    seive[multiplier] = 1;
    multiplier *= 2;
  }
}


let sieveSize = 200000;
var sieve = Array(repeating:0,count:sieveSize);
var runningVar = 2;
var currentPrime = 0;

while (true)
{
  if (runningVar == sieveSize){print ("Enlarge Sieve.");break;}
  if (sieve[runningVar] == 0)
  {
    if (isPrime(runningVar))
    {
      currentPrime += 1;
      if (currentPrime == 10001){print (runningVar); break;}
      markSieve(runningVar,withSieve:&sieve);
    }
  }
  runningVar+=1;
}
