// https://leetcode.com/problems/add-to-array-form-of-integer/

class Solution {
  func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
    var sumArr: [Int] = []
    var carry = k
    var index = num.count - 1

    while index >= 0 || carry > 0 {
      if index >= 0 {
        carry += num[index]
        index -= 1
      }
      sumArr.append(carry % 10) 
      carry /= 10 
    }

    return sumArr.reversed() 
  }
}
