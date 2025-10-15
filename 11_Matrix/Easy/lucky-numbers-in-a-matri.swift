https://leetcode.com/problems/lucky-numbers-in-a-matrix/


class Solution {
    func luckyNumbers(_ matrix: [[Int]]) -> [Int] {
        var rowMin = matrix.map { $0.min()! }

        var cols = [[Int]]()
        for i in 0 ..< matrix[0].count {
            cols.append(matrix.map { $0[i] })
        }

        var colMax = cols.map { $0.max()! }

        var result = [Int]()
        for i in colMax {
            for j in rowMin {
                if i == j {
                    result.append(i)
                }
            }
        }
        
        return result
    }
}


// [3,7,8],
// [9,11,13],
// [15,16,17]
