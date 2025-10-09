// https://leetcode.com/problems/n-repeated-element-in-size-2n-array/submissions/1796384391/

class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var seen = Set<Int>()
        
        for num in nums {
            if seen.contains(num) {
                return num
            } else {
                seen.insert(num)
            }
        }
        
        return -1
    }
}
