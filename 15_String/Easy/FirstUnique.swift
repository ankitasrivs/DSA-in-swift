// https://leetcode.com/problems/first-unique-character-in-a-string/

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var charCount = Array(repeating: 0,  count: 26)
        var scharArr = Array(s.unicodeScalars)
        for ch in scharArr {
            var index = Int(ch.value) - 97
            charCount[index] += 1
        }
        for (ind, ch) in scharArr.enumerated() {
            var index = Int(ch.value) - 97
            if charCount[index] == 1 {
                return ind
            }
        }
        return -1
    }
}
