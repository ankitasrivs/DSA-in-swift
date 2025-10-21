// https://leetcode.com/problems/number-complement/submissions/1807590202/

class Solution {
    func findComplement(_ num: Int) -> Int {
        var x = String(num,radix:2)
        let str = String(x.map { $0 == "0" ? "1" : "0" })
        return Int(str,radix:2)!
    }
}
