// https://leetcode.com/problems/set-matrix-zeroes/

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
      var hPoints = Set<Int>()
      var vPoints = Set<Int>()

      for vIndex in 0..<matrix.count {
        for hIndex in 0..<matrix[vIndex].count {
          if matrix[vIndex][hIndex] == 0 {
           hPoints.insert(hIndex)
           vPoints.insert(vIndex)
          }
        }
      }

      for hIndex in hPoints {
        for i in 0..<matrix.count {
            matrix[i][hIndex] = 0
        }
      }
        for vIndex in vPoints {
        for i in 0..<matrix[0].count {
            matrix[vIndex][i] = 0
        }
      }
      
    }
}
