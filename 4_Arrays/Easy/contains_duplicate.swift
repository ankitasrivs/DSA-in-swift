// https://leetcode.com/problems/contains-duplicate/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let numsSet = Set(nums)
        return nums.count != numsSet.count
    }
}
