// https://leetcode.com/problems/alternating-digit-sum/

class Solution {
    func alternateDigitSum(_ n: Int) -> Int {
        var n1 = Array(String(n))
        var res = 0
        for i in 0..<n1.count {
            if i % 2 == 0 {
                   res += Int(String(n1[i]))!
            } else {
                res -= Int(String(n1[i]))!
            }
        }
        return res
    }
}
