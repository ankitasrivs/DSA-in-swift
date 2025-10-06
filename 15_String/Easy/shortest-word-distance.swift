// https://leetcode.com/problems/shortest-word-distance/description/

class Solution {
    func shortestDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        var index1 = -1
        var index2 = -1
        var minDistance = Int.max

        for (i, word) in words.enumerated() {
            if word == word1 {
                index1 = i
            } else if word == word2 {
                index2 = i
            }
            
            if index1 != -1 && index2 != -1 {
                minDistance = min(minDistance, abs(index1 - index2))
            }
        }
        
        return minDistance
    }
}
