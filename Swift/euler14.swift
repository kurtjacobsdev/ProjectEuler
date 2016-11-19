func isEven (_ value:Int) -> (Bool){
  return (value % 2 == 0);
}

func calculateCollatz(_ value:Int) -> (Int){
  var start = value;
  var count = 1;
  while (start != 1)
  {
    if (isEven(start)){
      start = evenCollatz(start);
    }
    else{
      start = oddCollatz(start);
    }
    count += 1;
  }
  return count;
}

func evenCollatz(_ value:Int) -> (Int){
  return value/2;
}

func oddCollatz(_ value:Int) -> (Int){
  return (value*3)+1;
}

var starting = 999999;
var max = -1;
var target = -1;
while (starting > 1){
  let chainSize = calculateCollatz(starting);
  if (chainSize > max){max = chainSize;target=starting;}
  starting -= 1;
}

print (target);
