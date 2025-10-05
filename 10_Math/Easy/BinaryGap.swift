// https://leetcode.com/problems/binary-gap/

class Solution {
    func binaryGap(_ n: Int) -> Int {
       var n = n
       var index = 0
       var last = -1
       var gap = 0
       var ones = 0
        while n > 0 {
            let f = n % 2 
            if f == 1 {
               ones += 1 
                if last != -1 {
                    gap = max(gap, index - last)
                }
                last = index
            }
            index += 1
            n /= 2
        }
         if ones < 2 { return 0 }
        return gap
    }
}
