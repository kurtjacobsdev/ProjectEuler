func isEven(_ input:Int) -> (Bool)
{
  if (input % 2 == 0)
  {
    return true;
  }
  return false;
}

func incrementLarger(x1:inout Int,x2:inout Int) -> (Int)
{
  if (x1<x2)
  {
    x1=x1+x2; return x1;
  }
  else
  {
    x2=x1+x2; return x2;
  }
}

var x1:Int = 1;
var x2:Int = 2;
var sum:Int = x2;
let LIMIT:Int = 4000000;

while (x1 <= LIMIT && x2 <= LIMIT)
{
  let larger = incrementLarger(x1:&x1,x2:&x2);
  if (isEven(larger))
  {
    sum += larger;
  }
}

print (sum);
