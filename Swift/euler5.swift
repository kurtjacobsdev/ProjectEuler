func divideNumber(_ value:Int,usingLowerBound lower:Int,andUpperBound upper:Int) -> (Bool)
{
  for x in (lower..<upper+1)
  {
    if (value % x != 0)
    {
      return false;
    }
  }
  return true;
}

let lower = 2;
let upper = 20;
var count = upper;

while (true)
{
  if (divideNumber(count,usingLowerBound:lower,andUpperBound:upper))
  {
    print (count);
    break;
  }
  count += 2;
}
