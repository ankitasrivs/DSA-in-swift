
//https://leetcode.com/problems/missing-number-in-arithmetic-progression/description/
class Solution {
    func missingNumber(_ arr: [Int]) -> Int {
        let n = arr.count
        let d = (arr.last! - arr.first!) / n
        var left = 0, right = n - 1
        
        while left + 1 < right {
            let mid = (left + right) / 2
            let expected = arr[0] + mid * d
            if arr[mid] == expected {
                left = mid
            } else {
                right = mid
            }
        }
        
        return arr[left] + d
    }
}
