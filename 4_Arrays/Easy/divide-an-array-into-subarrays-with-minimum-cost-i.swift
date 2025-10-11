

class Solution {
    func minimumCost(_ nums: [Int]) -> Int {
       var num1 = Int.max
       var num2 = Int.max

       for i in 1..<nums.count {
        if nums[i] < num1 {
            num2 = num1 
            num1 = nums[i]
        } else if nums[i] < num2 {
          num2 = nums[i]
        }
       } 
       return nums[0] + num1 + num2
    }
}
