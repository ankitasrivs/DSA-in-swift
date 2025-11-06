
// https://leetcode.com/problems/unique-paths/
class Solution {
    // - Complexity:
    //   - time: O(n * m), where n is the number of rows, and m is the number of columns.
    //   - space: O(min(n, m)), where n is the number of rows, and m is the number of columns.
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<n {
            for j in 0..<m {
                if i == 0 || j == 0 {
                    matrix[i][j] = 1
                } else {
                    matrix[i][j] = matrix[i-1][j] + matrix[i][j-1]
                }
            }
        }
        return matrix[n-1][m-1]
    }

}
