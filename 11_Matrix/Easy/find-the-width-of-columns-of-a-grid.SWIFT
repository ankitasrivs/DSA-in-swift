// https://leetcode.com/problems/find-the-width-of-columns-of-a-grid/

class Solution {
    func findColumnWidth(_ grid: [[Int]]) -> [Int] {
        var res = [Int]()
        
        // Ensure the grid is not empty
        guard !grid.isEmpty else {
            return []
        }

        for j in 0..<grid[0].count {
            var maxNum = 0
            for i in 0..<grid.count {
                let num = grid[i][j]
                // Convert number to string and check its length, adding 1 if it's negative to count the '-' sign.
                let length = String(abs(num)).count + (num < 0 ? 1 : 0)
                maxNum = max(maxNum, length)
            }
            res.append(maxNum)
        }
        
        return res
    }
}
