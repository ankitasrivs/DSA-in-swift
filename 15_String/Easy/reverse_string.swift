
// https://leetcode.com/problems/reverse-string/
class Solution {
    func reverseString(_ s: inout [Character]) {
        var leftIndex = 0
        var rightIndex = s.count - 1
        
        while leftIndex < rightIndex {
            let temp = s[leftIndex]
            s[leftIndex] = s[rightIndex]
            s[rightIndex] = temp
            
            leftIndex += 1
            rightIndex -= 1
        }
    }
}
