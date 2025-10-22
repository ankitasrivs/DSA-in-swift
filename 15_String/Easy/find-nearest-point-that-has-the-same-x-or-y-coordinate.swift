//https://leetcode.com/problems/find-nearest-point-that-has-the-same-x-or-y-coordinate/

class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var minIndex = -1
        var currentMinValue = Int.max
        var pointer = 0
        for i in points {
            if i[0] == x || i[1] == y {
                var distance = abs(i[0] - x) + abs(i[1] - y)
                minIndex = distance < currentMinValue ? pointer : minIndex
                currentMinValue = min(distance, currentMinValue)
            }
            pointer += 1
        }
        return minIndex
    }
}
