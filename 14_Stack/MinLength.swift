

class Solution {
    func minLength(_ s: String) -> Int {
        var stack = [Character]()
        
        for c in s {
            if let top = stack.last {
                if (top == "A" && c == "B") || (top == "C" && c == "D") {
                    stack.removeLast()
                    continue
                }
            }
            stack.append(c)
        }
        
        return stack.count
    }
}
