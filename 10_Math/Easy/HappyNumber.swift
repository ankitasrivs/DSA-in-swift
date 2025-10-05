
// https://leetcode.com/problems/happy-number/
class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = nextNumber(n)
        
        while fast != 1 && slow != fast {
            slow = nextNumber(slow)
            fast = nextNumber(nextNumber(fast))
        }
        
        return fast == 1
    }
    
    private func nextNumber(_ n: Int) -> Int {
        var n = n, res = 0
        while n > 0 {
            let d = n % 10
            res += d * d
            n /= 10
        }
        return res
    }
}
