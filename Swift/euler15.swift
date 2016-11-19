let x = 21;
let y = 21;
var matrix:[Int] = Array(repeating:1,count:x);

func calculatePascalsTriangle(matrix:inout [Int],xdim:Int,ydim:Int) -> (Int){
  for yy in (1..<y) {
    for xx in (0..<x) {
      var left = 0;
      if (xx > 0){
        left = matrix[(yy*x) + xx-1];
      }
      let top = matrix[((yy-1)*x)+xx];
      matrix.append(top+left);
    }
  }
  return matrix.last!;
}

let numRoutes = calculatePascalsTriangle(matrix:&matrix,xdim:x,ydim:y)
print (numRoutes);
