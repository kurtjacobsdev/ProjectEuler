import Darwin

var x = "123"
var y = "456"
var partials:[Int] = Array(repeating:0,count:6);

for i in (0..<x.characters.count) {
    var carry = 0;
    for j in (0..<y.characters.count) {
      var xx = Int(String(x[x.index(x.startIndex,offsetBy:j)]));
      var yy = Int(String(y[y.index(y.startIndex,offsetBy:i)]));
      var total = (xx! * yy!) + partials[i+j] + carry;
      print (xx!,yy!)
      carry = Int(floor(Double(total)/10.0));
      partials [i+j] = total%10;
    }
}

print (partials)
