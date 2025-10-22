
//https://leetcode.com/problems/most-common-word/

class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let bannedSet = Set(banned.map { $0.lowercased() })
        
        // Split paragraph by non-letter characters and lowercase
        let words = paragraph.lowercased().split { !$0.isLetter }
        
        // Count word frequencies
        var counts = [String: Int]()
        for word in words {
            let w = String(word)
            if !bannedSet.contains(w) {
                counts[w, default: 0] += 1
            }
        }
        
        // Find the most frequent word
        return counts.max { $0.value < $1.value }!.key
    }
}
