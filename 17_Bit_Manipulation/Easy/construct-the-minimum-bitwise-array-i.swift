// https://leetcode.com/problems/construct-the-minimum-bitwise-array-i/

class Solution {
    func minBitwiseArray(_ nums: [Int]) -> [Int] {
        var res = nums
        for i in 0..<nums.count {
         var found = false
         if nums[i] % 2 == 0 {
            res[i] = -1
            continue
         }
         for x in 0...nums[i] {
            if x | (x+1) == nums[i] {
                res[i] = x
                found = true
                break

            }
            if !found {
                res[i] = -1
            }
         }
        }

        return res
    }
}
