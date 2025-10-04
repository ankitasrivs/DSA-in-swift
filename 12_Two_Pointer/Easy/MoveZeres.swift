
// https://leetcode.com/problems/move-zeroes/
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
      var i = 0
      var k = 0
      for n in nums {
        if n == 0  {
            i += 1
        } else {
            nums.swapAt(i, k)
            i += 1
            k += 1
        }
      }   
    }
}

