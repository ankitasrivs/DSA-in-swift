// https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 } // handle empty needle case
        if needle.count > haystack.count { return -1 }
        
        for i in 0...(haystack.count - needle.count) {
            var hIndex = haystack.index(haystack.startIndex, offsetBy: i)
            var matched = true
            
            for j in 0..<needle.count {
                let nIndex = needle.index(needle.startIndex, offsetBy: j)
                if haystack[hIndex] != needle[nIndex] {
                    matched = false
                    break
                }
                hIndex = haystack.index(after: hIndex)
            }
            
            if matched {
                return i
            }
        }
        
        return -1
    }
}
