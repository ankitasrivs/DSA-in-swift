

https://leetcode.com/problems/single-number/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
       return nums.reduce(0,^) 
    }
}
