
// https://leetcode.com/problems/count-elements-with-maximum-frequency/submissions/1802286101/
class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
       var dict = [Int: Int]()
       var d = 0
       var res = 0
       for i in nums {
        dict[i, default: 0] += 1
        d = max(d, dict[i]!)
               }
        for (key, val) in dict where val == d {
           res += val
        }
       return res
    }
}
