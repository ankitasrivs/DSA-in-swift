

https://leetcode.com/problems/search-a-2d-matrix/


class Solution {
    // - Complexity:
    //   - time: O(log(nm)), where n is the number of rows in the matrix, and m is the number of columns in the matrix.
    //   - space: O(1), only constant space is used.
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty else { return false }

        let m = matrix.count
        let n = matrix[0].count

        var left = 0
        var right = m * n - 1

     while left <= right {
        let mid = left + (right - left) / 2
        let elem = matrix[mid/n][mid%n]
        if elem == target {
            return true
        } else if elem > target {
            right = mid - 1
        } else {
            left = mid + 1
        }
     }
     return false
    }

}
