// https://leetcode.com/problems/count-prefix-and-suffix-pairs-i/

class Solution {
    private func isPrefixAndSuffix(_ str1: String, _ str2: String) -> Bool {
        str2.hasPrefix(str1) && str2.hasSuffix(str1)
    }

    func countPrefixSuffixPairs(_ words: [String]) -> Int {
        var result = 0
        for i in 0 ..< words.count - 1 {
            for j in i + 1 ..< words.count where isPrefixAndSuffix(words[i], words[j]) {
                result += 1
            }
        }

        return result
    }
}
