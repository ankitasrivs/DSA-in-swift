//https://leetcode.com/problems/valid-anagram/

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
          if s.count != t.count {
            return false
        }
       var a = Array(repeating: 0, count: 26)
       
    for c in s.utf8 {
            a[Int(c-97)] += 1
        }
        for c in t.utf8 {
            a[Int(c-97)] -= 1
        }

       for i in a {
        if i != 0 {
            return false
        }
       }
        return true
    }
}

//Time: O(n)
//Space: O(n)
