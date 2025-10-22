
// https://leetcode.com/problems/valid-word-abbreviation/description/
class Solution {
    func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
        var i = 0, j = 0
        let wordArray = Array(word)
        let abbrArray = Array(abbr)
        
        while j < abbr.count {
            if abbrArray[j].isLetter {
                if i < word.count && wordArray[i] == abbrArray[j] {
                    i += 1
                    j += 1
                } else {
                    return false
                }
            } else {
                if abbrArray[j] == "0" {
                    return false
                }
                var num = 0
                while j < abbr.count, let digit = abbrArray[j].wholeNumberValue {
                    num = num * 10 + digit
                    j += 1
                }
                i += num
                if i > word.count {
                    return false
                }
            }
        }
        return i == word.count
    }
}
