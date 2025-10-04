
// https://leetcode.com/problems/pascals-triangle/submissions/1791014620/
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var intRes = [[Int]]()
        for i in 0...numRows-1 {
            var res = [Int]()
            for j in 0...i {
                if j == 0 || j == i {
                    res.append(1)
                } else {
                    res.append(intRes[i-1][j-1] + intRes[i-1][j])
                }
            }
            intRes.append(res)
        }
        return intRes
    }
}
