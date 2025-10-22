
// https://leetcode.com/problems/transpose-matrix/
class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var res = Array(repeating: Array(repeating: 0, count: matrix.count), count: matrix[0].count)
      for i in 0..<res.count {
        for j in 0..<res[0].count {
            res[i][j] = matrix[j][i]
        }
      }
       return res
    }
}
