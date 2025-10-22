// https://leetcode.com/problems/check-if-it-is-a-straight-line/

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        let coordinates: [[Double]] = coordinates.map { $0.map{ Double($0) } }
        
        let A = coordinates[0]
        let B = coordinates[1]

        if A[0] - B[0] == 0 {
            return coordinates.allSatisfy { $0[0] == A[0] }
        }
        
        let k = (A[1] - B[1]) / (A[0] - B[0])
        let b = A[1] - k*A[0]

        return coordinates.allSatisfy { $0[1] == k * $0[0] + b }
    }
}
