

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var seen = Set<Int>()
        var num = n
        while num != 1 {
            if seen.contains(num) {
                return false
            }
            seen.insert(num)
            num = nextNumber(num)
        }
        return true
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

//Time: O(n)
//Space:O(n)

// Using two pointers

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var seen = Set<Int>()
        var num = n
        while num != 1 {
            if seen.contains(num) {
                return false
            }
            seen.insert(num)
            num = nextNumber(num)
        }
        return true
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

//Time: O(n)
//Space:O(1)

