
// https://leetcode.com/problems/split-strings-by-separator/submissions/1808327763/
class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        var result: [String] = []
        
        var temp: String = ""
        for word in words {
            for char in word {
                if char == separator {
                    if temp != "" {
result.append(temp)
                    temp = ""
                    }
                    
                } else {
                    temp += String(char)
                }
            }

            if temp != "" {
                result.append(temp)
                temp = ""
            }
        }
        
        return result
    }
}
