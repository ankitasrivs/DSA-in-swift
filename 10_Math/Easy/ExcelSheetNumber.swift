// https://leetcode.com/problems/excel-sheet-column-number/description/


class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
     var res = 0

     for i in columnTitle {
        let f = Int(i.asciiValue!) - 64
        res = (res * 26) + f

     }
     return res
    }
}
