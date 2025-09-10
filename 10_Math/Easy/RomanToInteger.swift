// https://leetcode.com/problems/roman-to-integer/
class Solution {
    func romanToInt(_ s: String) -> Int {
        var res = 0
        var prev = 0
        var curr = 0
        for i in s {
            switch i {
                case "I":
                curr = 1
                case "V":
                curr = 5
                case "X":
                curr = 10
                case "L":
                curr = 50
                case "C":
                curr = 100
                case "D":
                curr = 500
                case "M":
                curr = 1000
                default:
                break
            }
            if prev >= curr {
                res += prev
            } else {
                 res -= prev   
            }
            prev = curr
        }
        res += curr
        return res
    }
}

// Time: O(n)
//Space: O(1)
