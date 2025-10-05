
// https://leetcode.com/problems/reverse-words-in-a-string-iii/description/
class Solution {
    func reverseWords(_ s: String) -> String {
        var s = Array(s)  // Convert the string to a character array for in-place manipulation
        var left = 0  // Left pointer
        
        // Traverse the array character by character
        for right in 0..<s.count {
            if s[right] == " " || right == s.count - 1 {
                // If we reach the end of the word or the string, reverse the word
                let end = right == s.count - 1 ? right : right - 1
                reverseWord(&s, left, end)
                
                // Move `left` to the start of the next word
                left = right + 1
            }
        }
        
        // Convert the character array back to string
        return String(s)
    }
    
    private func reverseWord(_ s: inout [Character], _ left: Int, _ right: Int) {
        var l = left
        var r = right
        while l < r {
            s.swapAt(l, r)
            l += 1
            r -= 1
        }
    }
}
