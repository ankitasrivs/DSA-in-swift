// https://leetcode.com/problems/search-insert-position/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
       if nums[0] > target {
        return 0
       } else if nums[nums.count - 1] < target {
        return nums.count
       }

       var low = 0   
       var left = 0
       var high = nums.count - 1

       while low <= high {
        let mid = (low + high)/2
        if nums[mid] < target {
            left = mid + 1
            low = mid + 1
        } else {
            high = mid - 1
        }
       }
       return left
    }
}
