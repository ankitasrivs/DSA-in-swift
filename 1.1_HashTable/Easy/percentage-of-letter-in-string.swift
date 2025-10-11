// https://leetcode.com/problems/percentage-of-letter-in-string/

class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        var dict = [Character: Int]()
        for i in s {
            dict[i, default: 0] += 1
        }
        return dict[letter] == nil ? 0 : dict[letter]! * 100 / s.count
    }
}
