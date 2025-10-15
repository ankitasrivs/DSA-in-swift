
// https://leetcode.com/problems/reverse-degree-of-a-string/

class Solution {
    func reverseDegree(_ s: String) -> Int {
       var res = 0
       let s = Array(s)
       for i in 0..<s.count {
        let f = Int(s[i].asciiValue!) - 97
   
        res += ((i+1) * (26 - f))
  
       } 
       return res
    }
}
