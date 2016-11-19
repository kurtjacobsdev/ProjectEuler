import Darwin

func divisorCount(_ value:Int) -> (Int)
{
  if (value == 1){return 1};
  if (value == 2){return 2};
  var count = 1;
  for x in 1..<(value/2)+1{
    if (value % x == 0)
    {
      count += 1;
    }
  }
  return count
}

let target = 500;
var counting = 1;
var triangle = 0;

while (true)
{
  triangle += counting;
  let divcount = divisorCount(triangle);
  print (triangle,divcount)
  if (divcount > target){print (triangle);break;}
  counting += 1;
}
