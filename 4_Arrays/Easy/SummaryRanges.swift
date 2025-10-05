
// https://leetcode.com/problems/summary-ranges/description/
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }

        var left = nums[0]
        var right = nums[0]
        var res: [String] = []

        for i in 1..<nums.count {
            print(nums[i])
            if nums[i] - nums[i - 1] == 1 {
                right = nums[i]
            } else {
                res.append(left == right ? "\(left)" : "\(left)->\(right)")
                left = nums[i]
                right = nums[i]
            }
        }

        res.append(left == right ? "\(left)" : "\(left)->\(right)")

        return res
    }
}
