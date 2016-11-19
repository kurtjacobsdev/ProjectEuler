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

func markSieve(_ value:Int, withSieve seive:inout Array<Int>, limit:Int) -> (Void)
{
  var multiplier = value;
  while (multiplier < limit)
  {
    multiplier *= 2;
    if (multiplier < seive.count)
    {
      seive[multiplier] = 1;
    }
  }
}

let sieveSize = 2000000;
var sieve = Array(repeating:0,count:sieveSize);
var runningVar = 2;
var LIMIT = 2000000;

while (true)
{
  if (runningVar == sieveSize){print ("Enlarge Sieve");break;}
  if (runningVar == LIMIT-1){break;}
  if (sieve[runningVar] == 0)
  {
    if (isPrime(runningVar))
    {
      sieve[runningVar] = 2;
      markSieve(runningVar,withSieve:&sieve,limit:LIMIT);
    }
  }
  runningVar+=1;
}

var sum = 0;
for x in (0..<LIMIT)
{
  if (sieve[x] == 2)
  {
    sum+=x;
  }
}

print (sum);
