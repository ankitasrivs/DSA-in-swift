//https://leetcode.com/problems/find-the-child-who-has-the-ball-after-k-seconds/

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var ans = UInt32(0)
        var x = UInt32(n)
        for i in 0..<32 {
            let bit = x & 1
            ans |= (bit << (31 - i))
            x = x >> 1
        }
        return Int(ans)
    }
}
