// https://leetcode.com/problems/count-operations-to-obtain-zero/submissions/1785204335/

class Solution {
    func countOperations(_ num1: Int, _ num2: Int) -> Int {
       var c = 0
       var num1 = num1
       var num2 = num2

      while num1 != 0 && num2 != 0 {
        let temp = max(num1,num2) - min(num1,num2)
        num2 = min(num1,num2)
        num1 = temp
        c += 1
      }
      return c
    }
}
