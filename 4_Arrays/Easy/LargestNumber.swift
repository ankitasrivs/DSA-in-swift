// https://leetcode.com/problems/largest-number-after-digit-swaps-by-parity/

class Solution {
    func largestInteger(_ num: Int) -> Int {
       var num = Array(String(num))
       for i in 0..<num.count {
        for j in i..<num.count {
            let k = Int(String(num[i]))!
            let k1 = Int(String(num[j]))!
            if (k % 2 == 0 && k1 % 2 == 0) || (k % 2 != 0 && k1 % 2 != 0) {
                if k < k1 {
                    num.swapAt(i,j)
                }
            }
        }
       }
       return Int(String(num))!
    }
}
