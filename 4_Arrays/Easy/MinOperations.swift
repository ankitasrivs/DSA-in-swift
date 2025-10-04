// https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-i/

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
       var nums = nums.sorted()
       var c = 0
       while nums.count > 0 {
        if nums[0] >= k {
            return c
        }
        nums.removeFirst()
        c  += 1
       }
       return c
    }
}
