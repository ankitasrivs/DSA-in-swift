

//https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three/submissions/1785191590/


class Solution {
    func averageValue(_ nums: [Int]) -> Int {
        let ns = nums.filter { $0 % 2 == 0 && $0 % 3 == 0 }
        return ns.reduce(0, +) / max(ns.count, 1)
    }
}
