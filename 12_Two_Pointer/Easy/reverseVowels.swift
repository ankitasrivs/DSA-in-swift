
class Solution {
    func reverseVowels(_ s: String) -> String {
       var s = Array(s)
       var i = 0 
       var j = s.count - 1
       func isVowel(_ c: Character) -> Bool {
        switch c{
        case "a","e","i","o","u","A","E","I","O","U": 
        return true
        default: return false
       }
       }
      while i < j {
        if !isVowel(s[i]) {
            i += 1
        } else if !isVowel(s[j]) {
            j -= 1
        } else {
            s.swapAt(i,j)
            i += 1
            j -= 1
        }
      }
      return String(s)
    }
}

// Time: O(n)
//Space: O(1)
