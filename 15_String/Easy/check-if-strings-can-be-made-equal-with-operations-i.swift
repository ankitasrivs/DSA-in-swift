
https://leetcode.com/problems/check-if-strings-can-be-made-equal-with-operations-i/submissions/1802470602/
class Solution {
    func canBeEqual(_ s1: String, _ s2: String) -> Bool {
        func op(_ s: String) -> [Character] {
            var s = Array(s)
            for i in 0 ... 1 where s[i] > s[i+2] {
                s.swapAt(i, i+2)
            }
            return s
        }
        
        return op(s1) == op(s2)
    }
}
