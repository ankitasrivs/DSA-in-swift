
// https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/
class Solution {
    func check(_ nums: [Int]) -> Bool {
      var drop = 0
      for i in 0..<nums.count {
             let next = (i + 1) % nums.count
        if nums[i] > nums[next] {
            drop += 1
        }
      }


      return drop <= 1
    }
}
