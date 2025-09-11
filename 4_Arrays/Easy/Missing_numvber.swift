// https://leetcode.com/problems/missing-number/submissions/1766959910/



class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
     
     var res = nums.count

     for i in 0..<nums.count {
        res ^= i ^ nums[i]
     }

     return res
    }
}

/*
Time: O(n)
Space: O(1)
*/
