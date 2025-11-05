// https://leetcode.com/problems/sort-colors/submissions/1821403785/

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var l = 0
        var m = 0
        var h = nums.count - 1

        while m <= h {
            switch nums[m] {
                case 0:
                nums.swapAt(l, m)
                l += 1
                  m += 1 
                case 1:
                m += 1
                default:
                  nums.swapAt(h, m)
                  h -= 1
             
            
            }
        }
    }
}
