
// https://leetcode.com/problems/maximum-subarray/description/
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
    var max1 = nums[0]
    var sum = 0
    var i = 0
    while i < nums.count {
        sum += nums[i]
        if sum > 0 {
        max1 = max(max1, sum)
        } else {
            max1 = max(max1, sum)
            sum = 0
        }
        i += 1
    }
    return max1
    }
}
