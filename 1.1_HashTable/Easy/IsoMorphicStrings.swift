// https://leetcode.com/problems/isomorphic-strings/

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let sArr = Array(s)
        let tArr = Array(t)

        func pattern(_ arr: [Character]) -> [Int] {
            var dict = [Character: Int]()
            var res = [Int]()
            for (i, ch) in arr.enumerated() {
                if dict[ch] == nil {
                    dict[ch] = i
                }
                res.append(dict[ch]!)
            }
            return res
        }

        return pattern(sArr) == pattern(tArr)
    }
}
