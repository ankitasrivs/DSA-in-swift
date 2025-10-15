
// https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var result = 0
        var chars = Array(chars).reduce(into: [:]) { $0[$1, default: 0] += 1 }
        for word in words {
            var invalid = false
            var copy = chars
            for char in word {
                guard let total = copy[char], total > 0 else {
                  invalid = true
                  break  
                }
                copy[char, default: 0] = total - 1
            }
            result += invalid ? 0 : word.count
        }
        return result
    }
}
