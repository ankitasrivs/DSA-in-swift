// https://leetcode.com/problems/shortest-word-distance/description/

class Solution {
    func shortestDistance(_ wordsDict: [String], _ word1: String, _ word2: String) -> Int {
        var idx1 = -1
        var idx2 = -1
        var best = Int.max
        
        for i in 0..<wordsDict.count {
            let w = wordsDict[i]
            if w == word1 {
                idx1 = i
            }
            if w == word2 {
                idx2 = i
            }
            if idx1 >= 0 && idx2 >= 0 {
                best = min(best, abs(idx1 - idx2))
            }
        }
        
        return best
    }
}
