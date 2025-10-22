// https://leetcode.com/problems/palindrome-permutation/description/
class Solution {
    func canPermutePalindrome(_ s: String) -> Bool {
        // Count frequencies
        var freq = [Character: Int]()
        for ch in s {
            freq[ch, default: 0] += 1
        }
        
        // Count how many have odd frequency
        var oddCount = 0
        for count in freq.values {
            if count % 2 != 0 {
                oddCount += 1
                if oddCount > 1 {
                    return false
                }
            }
        }
        
        return true
    }
}
