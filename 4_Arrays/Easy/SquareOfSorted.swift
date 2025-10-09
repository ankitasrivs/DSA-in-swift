//https://leetcode.com/problems/squares-of-a-sorted-array/
class Solution {
	func sortedSquares(_ nums: [Int]) -> [Int] {
     var left = 0
     var right = nums.count - 1

     var arr = Array(repeating: 0, count: nums.count)

     var index = nums.count - 1

     while left <= right {
        if nums[left] * nums[left] >= nums[right] * nums[right] {
            arr[index] = nums[left] * nums[left]
            left += 1
        } else {
           arr[index] = nums[right] * nums[right]
           right -= 1
        }
        index -= 1
     }
     return arr
	}
}
