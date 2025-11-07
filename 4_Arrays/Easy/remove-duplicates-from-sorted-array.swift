// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    // - Complexity:
    //   - time: O(n), where n is the length of the nums.
    //   - space: O(1), only constant space is used.

    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        for j in 1..<nums.count {
            if nums[j] == nums[i] {
                continue
            }
            i += 1
            nums[i] = nums[j]

        }
        return i + 1
    }

}
