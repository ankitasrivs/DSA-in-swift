
// https://leetcode.com/problems/ant-on-the-boundary/description/
class Solution {
    func returnToBoundaryCount(_ nums: [Int]) -> Int {
        var res = 0
         var t = 0

         for i in nums {
            res += i 
            if res == 0 {
                t += 1
            }
         }


         return t 
    }
}

// Time: O(n) Space: O(1)
