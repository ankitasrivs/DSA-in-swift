
// https://leetcode.com/problems/maximum-area-of-longest-diagonal-rectangle/description/
class Solution {
    func areaOfMaxDiagonal(_ dimensions: [[Int]]) -> Int {
        var maxDiag: Double = 0
        var maxArea = 0

        for rect in dimensions {
            let width = rect[0]
            let height = rect[1]
            let diag = sqrt(Double(width * width + height * height))
            let area = width * height

            if diag > maxDiag {
                maxDiag = diag
                maxArea = area
            } else if diag == maxDiag {
                maxArea = max(maxArea, area)
            }
        }

        return maxArea
    }
}


// Time: O(n)
//Space: O(1)
