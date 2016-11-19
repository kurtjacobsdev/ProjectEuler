//var testTree:[Int] = [3,7,4,2,4,6,8,5,9,3];
var tree:[Int] = [75, 95, 64, 17, 47, 82, 18, 35, 87, 10, 20, 04, 82, 47, 65, 19, 01, 23, 75, 03, 34, 88, 02, 77, 73, 07, 63, 67, 99, 65, 04, 28, 06, 16, 70, 92, 41, 41, 26, 56, 83, 40, 80, 70, 33, 41, 48, 72, 33, 47, 32, 37, 16, 94, 29, 53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14, 70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57, 91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48, 63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31, 04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23];

func getRow(_ row:Int, inTree tree:Array<Int>) -> Array<Int>
{
  let start = ((row-1) * ((row-1) + 1))/2;
  let t = Array(tree[start..<start+row]);
  return t
}

func rowCount (tree:Array<Int>) -> Int {
  var xn = 0;
  var idx = 1;
  while (xn < tree.count){
    xn = (idx * (idx + 1))/2;
    idx += 1;
    if (xn == tree.count){
      return idx-1;
    }
  }
  return -1;
}

func sumRows (top:[Int],bottom:[Int]) -> ([Int])
{
  var sums:[Int] = [];
  for x in (0..<top.count)
  {
    let t1 = top[x] + bottom[x];
    let t2 = top[x] + bottom[x+1];
    if (t1 > t2){
      sums.append(t1);
    }
    else{
      sums.append(t2);
    }
  }
  
  return sums;
}

let numberOfRowsInTree = rowCount(tree:tree);
var lastRow = getRow(numberOfRowsInTree,inTree:tree);
for x in (1..<numberOfRowsInTree).reversed()
{
  lastRow = sumRows(top:getRow(x,inTree:tree),bottom:lastRow);
}

print (lastRow)
