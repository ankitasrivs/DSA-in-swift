// https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/

class Solution {
    func minOperations(_ nums: [Int]) -> Int {
         var count = 0
         var nums = nums  

    for i in 1..<nums.count {   
        if nums[i] <= nums[i - 1] {
            let diff = nums[i - 1] - nums[i] + 1
            nums[i] += diff
            count += diff
        }
    }

    return count
    }
}
