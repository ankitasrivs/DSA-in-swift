
// https://leetcode.com/problems/length-of-last-word/submissions/1790962333/
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
      var word = ""
      for i in s.reversed() {
        if !i.isWhitespace {
             word += String(i)
        } else if i.isWhitespace && word.count > 0 {
            return word.count
        }
      }  
      return word.count
    }
}
