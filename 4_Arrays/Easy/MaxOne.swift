// https://leetcode.com/problems/max-consecutive-ones/submissions/1785186870/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var curr = 0
        var max1 = 0
        for i in nums {
            if i == 1 {
                   curr += 1
            } else {
                max1 = max(max1, curr)
                curr = 0
            }
        }

        max1 = max(max1, curr)
        return max1
    }
}
