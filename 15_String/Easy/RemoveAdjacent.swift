// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/submissions/1791993448/

class Solution {
    func removeDuplicates(_ s: String) -> String {
        var res = [Character]()
        for c in s {
            if res.count > 0 && res[res.count - 1] == c {
                res.removeLast()
            } else {
                res.append(c)
            }
        }
        return String(res)
    }
}
