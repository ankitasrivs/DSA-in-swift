// https://leetcode.com/problems/excel-sheet-column-title/

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var columnNumber = columnNumber

        var res = ""

        while columnNumber > 0 {
            columnNumber -= 1
            let f = columnNumber % 26
            let ch = String(Character(UnicodeScalar(65+f)!))
            columnNumber /= 26
            res = ch + res

        }

        return res
    }
}
