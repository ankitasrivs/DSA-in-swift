
// 
// 
// https://leetcode.com/problems/rotate-image/description/
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
    for i in 0..<matrix.count {
        for j in i+1..<matrix[i].count {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        
    }

    for n in 0..<matrix.count/2 {
        let temp = matrix[i][n]
        matrix[i][n] = matrix[i][matrix.count - 1 - n]
        matrix[i][matrix.count - 1 - n] = temp
    } 
    }
    }
}
