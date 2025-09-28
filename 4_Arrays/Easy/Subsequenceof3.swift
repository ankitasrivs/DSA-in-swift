// https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/submissions/1785200637/

class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        let s = Array(s)
      guard s.count >= 3 else {
        return 0
      }
      var i = 0
      var c = 0

      while i <= s.count - 3 {
        if s[i] != s[i+1] && s[i+1] != s[i+2] && s[i] != s[i+2] {
            c += 1
        }
        i += 1
      } 
      return c
    }
}
