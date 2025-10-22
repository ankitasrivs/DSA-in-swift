// https://leetcode.com/problems/buddy-strings/

class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count else { return false }
        if s == goal {
            return Set(s).count < s.count  // has duplicates
        }

        let sArr = Array(s), gArr = Array(goal)
        let diffs = zip(sArr, gArr).enumerated().compactMap { i, pair in
            pair.0 == pair.1 ? nil : i
        }

        return diffs.count == 2 &&
               sArr[diffs[0]] == gArr[diffs[1]] &&
               sArr[diffs[1]] == gArr[diffs[0]]
    }
}
