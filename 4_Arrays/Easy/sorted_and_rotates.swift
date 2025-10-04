
// https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/
class Solution {
    func check(_ nums: [Int]) -> Bool {
        var drops = 0
        for i in 1..<nums.count {
            if nums[i] < nums[i - 1] {
                drops += 1
            }
        }
        if drops == 0 { return true } // already sorted
        if drops == 1 && nums.last! <= nums.first! { return true }
        return false
    }
}
