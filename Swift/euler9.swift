import Darwin

func isPythagoreanTriplet (_ a:Int,_ b:Int,_ c:Int) -> (Bool)
{
  if (a < b && b < c)
  {
    if (Int(pow(Double(a),2.0)) + Int(pow(Double(b),2.0)) == Int(pow(Double(c),2.0)))
    {
      return true;
    }
  }
  return false;
}

func findProduct(_ a:Int,_ b:Int,_ c:Int)-> (Int)
{
  return a * b * c;
}

var a = 1;
var b = 2;
var c = 3;

while (a + b + c < 1000)
{
  for bx in (b..<c)
  {
    if (bx == c){continue;}
    for ax in (a..<bx)
    {
      if (ax == bx){continue;}
      if (ax+bx+c == 1000 && isPythagoreanTriplet(ax,bx,c))
      {
        print (ax,bx,c)
        print (findProduct(ax,bx,c))
      }
    }
  }
  c+=1;
}
