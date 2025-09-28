
// https://leetcode.com/problems/sort-array-by-increasing-frequency/
class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var numsFrequency = [Int: Int]()
        var result = [Int]()

        for i in nums {
           numsFrequency[i, default: 0] += 1 
        }

        let sortedFrequency = numsFrequency.keys.sorted {
           if numsFrequency[$0]! != numsFrequency[$1]! {
               return numsFrequency[$0]! < numsFrequency[$1]! 
           } else {
            return $0 > $1
           } 
        }

        for i in sortedFrequency {
            result += Array(repeating: i, count: numsFrequency[i]!)
        }
        return result
    }
}
