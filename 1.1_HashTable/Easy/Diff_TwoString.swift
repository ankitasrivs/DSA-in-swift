//https://leetcode.com/problems/permutation-difference-between-two-strings/

class Solution {
    func findPermutationDifference(_ s: String, _ t: String) -> Int {
       var dict = [Character: Int]()
       var s = Array(s)
       var t = Array(t)
       var res = 0
       for i in 0..<s.count {
        dict[s[i]] = i
       }

       for i in 0..<t.count {
        res += abs(dict[t[i]]! - i)
       }
       return res

    }
}

//Time: O(n)
//Space: O(n)
