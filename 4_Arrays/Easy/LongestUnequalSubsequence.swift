// https://leetcode.com/problems/longest-unequal-adjacent-groups-subsequence-i/

class Solution {
    func canBeIncreasing(_ nums: [Int]) -> Bool {
        var count = 0
        var nums = nums
        
        for i in 1..<nums.count {
           if nums[i-1] >= nums[i] {
            count += 1
            if count > 1 {
                return false
            }

            if i > 1 && nums[i-2] > nums[i] {
                nums[i] = nums[i-1]
            }
           }
        }
        return true
    }
}
