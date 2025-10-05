// https://leetcode.com/problems/find-pivot-index/submissions/1791959262/

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let total = nums.reduce(0, +)  // total sum of array
        var leftSum = 0
        
        for (i, num) in nums.enumerated() {
            // If left sum equals total sum minus left sum minus current element → pivot
            if leftSum == total - leftSum - num {
                return i
            }
            leftSum += num
        }
        
        return -1
    }
}
