//https://leetcode.com/problems/plus-one/submissions/1778698327/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var carry = 1
        var res = [Int]()
        for i in stride(from: digits.count - 1, to: -1, by: -1) {
            let f = digits[i] + carry
            carry = f / 10
            res.insert(f%10, at: 0)
        }

        if carry > 0 {
          res.insert(carry, at: 0)  
        }
        return res
    }
}

//Time: O(n)
//Space: o(1)
