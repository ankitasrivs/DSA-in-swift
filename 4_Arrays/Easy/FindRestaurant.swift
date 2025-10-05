
// https://leetcode.com/problems/minimum-index-sum-of-two-lists/
class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var min: Int = Int.max
        var results: [String] = []
        var words1: [String: Int] = [:]
        for (i, word) in list1.enumerated() {
            words1[word] = i
        }

        for (i, word) in list2.enumerated() {
            if words1[word] != nil {
                let sum = words1[word, default: 0] + i
                if sum < min {
                    min = sum
                    results = []
                }
                if sum == min {
                    results.append(word)
                }
            }
        }

        return results
    }
}
