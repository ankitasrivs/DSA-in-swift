// https://leetcode.com/problems/next-permutation/submissions/1821390026/

class Solution {
    func nextPermutation(_ nums: inout [Int]) {
       guard nums.count > 1 else {
        return
       }
       var i = nums.count - 2

       while i >= 0 && nums[i] >= nums[i+1] {
        i -= 1
       }

      if i >= 0 {

        var j = nums.count - 1

        while j >= 0 && nums[j] <= nums[i] {
            j -= 1
        }

            nums.swapAt(i,j)

       }
       nums[(i+1)...].reverse()
    }
}
