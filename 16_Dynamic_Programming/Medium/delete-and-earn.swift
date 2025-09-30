// https://leetcode.com/problems/delete-and-earn/

class Solution {
    func deleteAndEarn(_ nums: [Int]) -> Int {
        var record: [Int: Int] = [:]
        for n in nums {
            record[n, default: 0] += n
        }

        var skip_i = 0
        var treat_i = 0

        let i_min = nums.min()!
        let i_max = nums.max()!

        for i in i_min...i_max {
            if i == i_min {
                treat_i = record[i] ?? 0
            } else {
                let temp = treat_i
                treat_i = max((skip_i + (record[i] ?? 0)), treat_i)
                skip_i = temp 
            }
        }
        return max(treat_i, skip_i)
    }
}
