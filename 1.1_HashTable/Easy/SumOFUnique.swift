// https://leetcode.com/problems/sum-of-unique-elements/

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for i in nums {
            dict[i, default: 0] += 1
        }

        return dict.keys.filter{
            dict[$0]! == 1
        }.reduce(0,+)
    }
}
