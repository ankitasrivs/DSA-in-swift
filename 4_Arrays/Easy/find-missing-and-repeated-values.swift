// https://leetcode.com/problems/find-missing-and-repeated-values/

class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
      let n = grid.count 
      var answer = [Int]()
      let m = n * n
      var realSum = 0
      var realSumSqs = 0
      for i in grid {
        for j in i {
            realSum += j
            realSumSqs += (j*j)
        }
      }

        let expectedSum = (m * (m + 1)) / 2
         let expectedSq = (m * (m + 1) * (2 * m + 1)) / 6

         let diff = realSum - expectedSum
         let diffSq = realSumSqs - expectedSq

         let sumRM = diffSq / diff            // R + M

        let R = (diff + sumRM) / 2
        let M = sumRM - R

        return [R, M]

    }
}
