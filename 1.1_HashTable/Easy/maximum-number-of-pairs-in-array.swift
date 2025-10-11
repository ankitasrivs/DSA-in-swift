
// https://leetcode.com/problems/maximum-number-of-pairs-in-array/
class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        var d = [0,0]
        var dict = [Int: Int]()
        for i in nums {
            dict[i, default: 0] += 1
        }
           for (_, count) in dict {
            d[0] += count / 2       // each pair uses 2 of the same number
            d[1] += count % 2       // remainder (0 or 1)
        }


        return d
    }
}
