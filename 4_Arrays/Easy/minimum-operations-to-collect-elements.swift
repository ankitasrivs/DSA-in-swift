// https://leetcode.com/problems/minimum-operations-to-collect-elements/

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var collected = Set<Int>()
        var operations = 0

        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            operations += 1

            if nums[i] >= 1 && nums[i] <= k {
                collected.insert(nums[i])
            }

            if collected.count == k {
                return operations
            }
        }

        return operations
    }
}
