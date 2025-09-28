// https://leetcode.com/problems/perfect-number/

class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num > 3 else {
            return false
        }
        var res = 1
        for i in 2...num/2 where num % i == 0{
            res += i
        }
        return res == num

    }
}

