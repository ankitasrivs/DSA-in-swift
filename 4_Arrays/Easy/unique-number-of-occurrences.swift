// https://leetcode.com/problems/unique-number-of-occurrences/

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict = [Int: Int]()
        for i in arr {
            dict[i, default: 0] += 1
        }

        return Set(dict.values).count == dict.values.count
    }
}
