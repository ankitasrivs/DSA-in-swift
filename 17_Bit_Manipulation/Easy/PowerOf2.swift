
// https://leetcode.com/problems/power-of-two/submissions/1791021632/
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
     guard n > 0 else { return false }
      return n & (n-1)  == 0
    }
}
