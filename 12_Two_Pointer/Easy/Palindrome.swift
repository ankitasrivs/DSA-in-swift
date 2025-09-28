
// https://leetcode.com/problems/valid-palindrome/submissions/1785158677/
 class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var i = 0
        var j = s.count - 1
        let chars = Array(s)

        while i < j {
            while i < j && !chars[i].isLetter && !chars[i].isNumber {
                i += 1
            }
            while i < j && !chars[j].isLetter && !chars[j].isNumber {
                j -= 1
            }
            
            if chars[i].lowercased() != chars[j].lowercased() {
                return false
            }
            i += 1
            j -= 1
        }
        
        return true
    }
}

