
// https://leetcode.com/problems/majority-element/submissions/1778680895/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = 0
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        
        return candidate
    }
}


//Time: O(n)
//Space: 
