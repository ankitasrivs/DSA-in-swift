https://leetcode.com/problems/count-vowel-substrings-of-a-string/
class Solution {
    func countVowelSubstrings(_ word: String) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let chars = Array(word)
        let n = chars.count
        var result = 0

        // check all substrings
        for i in 0..<n {
            var seen = Set<Character>()
            for j in i..<n {
                let c = chars[j]
                if !vowels.contains(c) { break } // stop if consonant found
                seen.insert(c)
                if seen.count == 5 { result += 1 }
            }
        }
        return result
    }
}
