
https://leetcode.com/problems/longest-palindrome/
class Solution {
    func longestPalindrome(_ s: String) -> Int {
   
        var dict = [Character: Int]()
        var res = 0
        for i in s {
            dict[i, default: 0] += 1
               if dict[i]! % 2 == 0 {
            res += 2
        }
        }

        for (key,value) in dict {
        if value % 2 != 0{
            res += 1
            break
        }
        }
        return res
    }
}
