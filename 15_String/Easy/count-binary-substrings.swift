// https://leetcode.com/problems/count-binary-substrings/submissions/1802436487/

class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let sarr = Array(s)
        var prev = 0
        var curr = 1
        var res = 0
        
        for i in 1..<sarr.count {
            if sarr[i] == sarr[i-1] {
                curr += 1
            } else {
                res += min(prev, curr) // compare prev and curr
                prev = curr
                curr = 1
            }
        }
        
        res += min(prev, curr) // add the last run
        return res
    }
}
