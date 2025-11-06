
// https://leetcode.com/problems/majority-element/
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
       var  majority = 0
       var n = 0

       for i in nums {
        if majority == 0 {
            n = i
        } 
        
         if i == n {
            majority += 1
        } else {
            majority -= 1
        }
       }
       return n
    }
}
