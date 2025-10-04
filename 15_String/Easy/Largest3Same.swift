

https://leetcode.com/problems/largest-3-same-digit-number-in-string/description/


class Solution {
    func largestGoodInteger(_ num: String) -> String {
      var num = Array(num)
      var res = -1
      for i in 0..<num.count {
        if i + 2 < num.count {
            if num[i+2] == num[i+1] && num[i+2] == num[i] {
                res = max(res, Int(String(num[i]))!)
            }
        }
      }
      if res == -1 {
        return ""
      }
      return "\(res)\(res)\(res)"
    }
}
