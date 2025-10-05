// https://leetcode.com/problems/longest-harmonious-subsequence/description/

class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var res = 0, r = 1, l = 0
        while r < nums.count {
            if nums[r] - nums[l] == 1 {
                res = max(res, r - l + 1)
                r += 1
            } else if nums[r] == nums[l] {
                r += 1
            } else {
                l += 1
            }
        }
        return res
    }
}
