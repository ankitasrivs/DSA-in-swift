// https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/1680278718/


class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
      var chars = [Character]()
      var len = 0

      for i in s {
        if let index = chars.firstIndex(of: i) {
             chars.removeSubrange(0...index)
        }
        chars.append(i)
        len = max(len, chars.count)
      } 
      return len 
    }
}

/*
Time: O(n^2)
Space: O(n)
*/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
      var chars = [Character: Int]()
      var start = 0
      var len = 0
      for (i,j) in s.enumerated() {
        if let prev = chars[j], prev >= start  {
            start = prev + 1
        }
        chars[j] = i 
        len = max(len, i - start + 1)
      }
      return len
    }
}

/*
Time: O(n)
Space: O(n)
*/

