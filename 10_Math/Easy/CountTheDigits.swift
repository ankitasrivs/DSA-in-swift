
// https://leetcode.com/problems/count-the-digits-that-divide-a-number/description/
class Solution {
    func countDigits(_ num: Int) -> Int {
        var s = 0
        var f = num
        while f > 0 {
            if num % (f%10) == 0 {
                s += 1
            }
            f /= 10
        }
        return s
    }
}
