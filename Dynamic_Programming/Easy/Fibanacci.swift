https://leetcode.com/problems/fibonacci-number/

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }

        var a = 0, b = 1
        for i in 2..<n {
            var tmp = a
            a = b
            b = b + tmp
        }

        return a + b
    }
}

// TIme: O((n)
//Space: O(1)
