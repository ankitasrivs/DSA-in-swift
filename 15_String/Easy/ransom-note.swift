// https://leetcode.com/problems/ransom-note/

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard !magazine.isEmpty else {
            return false
        }
        var array = Array(repeating: 0, count: 26)
        let firstCharacter = Character("a").asciiValue ?? 0

        for asciiValue in magazine.utf8 {
            let index = Int(asciiValue - firstCharacter)
            array[index] += 1
        }

        for asciiValue in ransomNote.utf8 {
            let index = Int(asciiValue - firstCharacter)
            array[index] -= 1

            if array[index] < 0 {
                return false
            }
        }
        return true
    }
}
