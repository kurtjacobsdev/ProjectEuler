import Foundation

func getRow(_ row:Int, inTree tree:[Int]) -> [Int]
{
  let start = ((row-1) * ((row-1) + 1))/2;
  let t = Array(tree[start..<start+row]);
  return t
}

func rowCount (tree:[Int]) -> Int {
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

let fileContent = try? NSString(contentsOfFile:"euler67.in", encoding:String.Encoding.ascii.rawValue).replacingOccurrences(of:"\n",with:" ");
var tree = fileContent!.components(separatedBy: " ").map{return Int($0)};

let numberOfRowsInTree = rowCount(tree:tree as! [Int]);
var lastRow = getRow(numberOfRowsInTree,inTree:tree as! [Int]);
for x in (1..<numberOfRowsInTree).reversed()
{
  lastRow = sumRows(top:getRow(x,inTree:tree as! [Int]),bottom:lastRow);
}

print (lastRow)
