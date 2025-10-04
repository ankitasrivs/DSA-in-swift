// https://leetcode.com/problems/maximum-ascending-subarray-sum/description/

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var currSum = nums[0]
        var maxSum = nums[0]
        
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                // Continue the ascending subarray
                currSum += nums[i]
            } else {
                // Sequence broke, reset current sum
                currSum = nums[i]
            }
            // Update the max sum found so far
            maxSum = max(maxSum, currSum)
        }
        
        return maxSum
    }
}
