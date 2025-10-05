// https://leetcode.com/problems/reverse-only-letters/

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var l = Array(s)
        var i = 0
        var j = s.count - 1
        while i < j {
            if !l[i].isLetter {
                i += 1
                continue
            }
            if !l[j].isLetter {
                j -= 1
                continue
            }
             l.swapAt(i,j)
            i += 1
            j -= 1


        }
        return String(l)
    }
}
