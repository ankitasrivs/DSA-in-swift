// https://leetcode.com/problems/count-vowel-substrings-of-a-string/

class Solution {
    func checkOnesSegment(_ s: String) -> Bool {
        // If "01" appears, it means there's another '1' after a '0'
        // → more than one segment of 1s → return false
        return !s.contains("01")
    }
}
