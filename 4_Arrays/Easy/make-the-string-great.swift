
// https://leetcode.com/problems/make-the-string-great/
class Solution {
    func makeGood(_ s: String) -> String {
        var stack = [Character]()
        for i in s {
            if stack.count > 0 && stack.last!.lowercased() == i.lowercased() && i != stack.last! {
                stack.removeLast()
            } else {
                stack.append(i)
            }
        }
            return String(stack)
    }

}
