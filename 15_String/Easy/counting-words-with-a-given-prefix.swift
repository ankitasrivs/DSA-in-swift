\\https://leetcode.com/problems/counting-words-with-a-given-prefix/


class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
       return words.filter {
        $0.hasPrefix(pref)
       }.count ?? 0
    }
}
