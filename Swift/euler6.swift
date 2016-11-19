import Darwin

func sumSqaured(lowerBound:Int, upperBound upper:Int)-> (Int)
{
  var sum = 0;
  for x in (lowerBound..<upper+1)
  {
    sum+=Int(pow(Double(x),2.0));
  }
  return sum;
}

func squaredSum(lowerBound:Int, upperBound upper:Int) -> (Int)
{
  var sum = 0;
  for x in (lowerBound..<upper+1)
  {
    sum+=x;
  }
  return Int(pow(Double(sum),2.0));
}

func differenceBetweenSquares(lowerBound:Int, upperBound upper:Int) -> (Int)
{
  return squaredSum(lowerBound:lowerBound,upperBound:upper) - sumSqaured(lowerBound:lowerBound,upperBound:upper);
}

let start = 1;
let end = 100;

print (differenceBetweenSquares(lowerBound:start,upperBound:end));
