

//https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        for i in s {
            if i == "(" || i == "[" || i == "{" {
                arr.append(i)
            } else if i == "]" && arr.count > 0 && arr.last! == "[" {
                arr.removeLast()
            } else if i == "}" && arr.count > 0 && arr.last! == "{" {
                arr.removeLast()
            }else if i == ")" && arr.count > 0 && arr.last! == "(" {
                arr.removeLast()
            } else {
                return false
            }
        }
        return arr.count == 0
    }
}

//Time: O(n)
//Space: O(1)
