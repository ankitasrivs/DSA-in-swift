// https://leetcode.com/problems/is-subsequence/submissions/1792204092/
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
       var i = 0
       var j = 0
       let s = Array(s)
       let t = Array(t)

       while i < s.count && j < t.count {
        if s[i] == t[j] {
            i += 1
            j += 1
        } else {
            j  += 1
        }
       }
       return i == s.count
    }
}
