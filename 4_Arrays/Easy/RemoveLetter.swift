
// https://leetcode.com/problems/remove-letter-to-equalize-frequency/submissions/1790945302/

class Solution {
    func equalFrequency(_ word: String) -> Bool {
        var count = [Character: Int]()
        for ch in word {
            count[ch, default: 0] += 1
        }

        // Try removing one occurrence of each letter and check if all frequencies match
        for ch in count.keys {
            count[ch]! -= 1
            if count[ch] == 0 {
                count.removeValue(forKey: ch)
            }

            let freqs = Set(count.values)
            if freqs.count == 1 { return true }

            // Restore for next iteration
            count[ch, default: 0] += 1
        }

        return false
    }
}
