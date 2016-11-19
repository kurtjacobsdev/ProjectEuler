func isPalindrome(_ value:Int) -> (Bool)
{
  let strValue = "\(value)";
  let charCount = strValue.characters.count/2;
  for i in (0..<charCount)
  {
    let left = strValue.index(strValue.startIndex, offsetBy: i);
    let right = strValue.index(strValue.endIndex, offsetBy: -(i+1));
    if (strValue[left] != strValue[right])
    {
      return false;
    }
  }
  return true;
}

let upperBound:Int = 999;
let lowerBound:Int = 100;
var largestPalindrome = 0;

for x1 in (lowerBound..<upperBound+1)
{
  for x2 in (lowerBound..<upperBound+1)
  {
    let multiplied = x1 * x2;
    if (isPalindrome(multiplied))
    {
      if (multiplied > largestPalindrome){
        largestPalindrome = multiplied;
      }
    }
  }
}

print (largestPalindrome)
