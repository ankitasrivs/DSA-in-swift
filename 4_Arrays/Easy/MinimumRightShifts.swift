
//https://leetcode.com/problems/minimum-right-shifts-to-sort-the-array/description/

class Solution {
    func minimumRightShifts(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
       var count = 0

       for i in 0..<nums.count * 2 {
        let ind = i % nums.count
        let ind_next = (i+1) % nums.count
         if nums[ind] < nums[ind_next] {
            count += 1
            if count == nums.count - 1 {
                return nums.count - ind_next - 1
            } 
         } else {
            count = 0
         }
       }
       return -1
    }
}

// Time: O(n)
//Space: O(1)
