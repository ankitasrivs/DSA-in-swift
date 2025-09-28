
// https://leetcode.com/problems/remove-element/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
      var index = 0 
      for i in nums {
        if i != val {
            nums[index] = i
            index += 1
        }
      }
      return index 
    }
}

