
// https://leetcode.com/problems/two-sum/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()  // value -> index
        for (i, num) in nums.enumerated() {
            if let j = dict[target - num] {
                return [j, i]
            }
            dict[num] = i
        }
        return []
    }
}

// Time: O(n)
//Space: O(n)


// Two pointer approach

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Pair numbers with their original indices
        let indexedNums = nums.enumerated().map { ($0, $1) }
        let sortedNums = indexedNums.sorted { $0.1 < $1.1 }

        var i = 0
        var j = sortedNums.count - 1

        while i < j {
            let sum = sortedNums[i].1 + sortedNums[j].1
            if sum == target {
                return [sortedNums[i].0, sortedNums[j].0]
            } else if sum < target {
                i += 1
            } else {
                j -= 1
            }
        }
        return []
    }
}
