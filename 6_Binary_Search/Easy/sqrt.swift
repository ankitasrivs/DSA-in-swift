// https://leetcode.com/problems/sqrtx/submissions/1785236402/

class Solution {
    func mySqrt(_ x: Int) -> Int {

        guard x > 1 else {
            return x
        }

        var low = 1
        var high = x

        while low <= high {
            let mid = (low+high)/2
            if mid * mid == x {
                return mid
            } else if mid * mid > x {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return high
    }
}
