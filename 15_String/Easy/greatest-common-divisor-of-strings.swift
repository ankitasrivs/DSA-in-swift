
//https://leetcode.com/problems/greatest-common-divisor-of-strings/ 
class Solution {
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let tmp = b
            b = a % b
            a = tmp
        }
        return a
    }

    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else { return "" }
        let gcdLen = gcd(max(str1.count, str2.count), min(str1.count, str2.count))
        return String(str1.prefix(gcdLen))
    }
}
