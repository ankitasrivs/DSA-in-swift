// https://leetcode.com/problems/climbing-stairs/description/
class Solution {
    func climbStairs(_ n: Int) -> Int {
      var f1 = 1
      var f2 = 1
      var res = 0
         guard n > 1 else {
        return 1
     }

     for _ in 2...n {
        res = f1 + f2
        f1 = f2
        f2 = res
     }
     return res
    }
}


// Time: O(n)
// Space: O(1)
