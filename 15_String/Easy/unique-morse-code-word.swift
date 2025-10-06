
// https://leetcode.com/problems/unique-morse-code-words/

class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var s = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
       var set1 = Set<String>()
       for i in words{
        var res = ""
        for k in i {
            let index = Int(k.asciiValue!) - 97
            res += s[index]
        }
        set1.insert(res)
       }

       return set1.count
    }
}
