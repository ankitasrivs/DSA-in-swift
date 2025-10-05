// https://leetcode.com/problems/path-crossing/

class Solution {

    private struct Point: Hashable {
        let x: Int
        let y: Int
    }

    func isPathCrossing(_ path: String) -> Bool {
        var pointSet = Set<Point>()
        var pos: Point = Point(x: 0, y: 0)
        pointSet.insert(pos)

        for direction in path {
            switch direction {
                case "N":
                    pos = Point(x: pos.x, y: pos.y + 1)
                case "S":
                    pos = Point(x: pos.x, y: pos.y - 1)
                case "E":
                    pos = Point(x: pos.x + 1, y: pos.y)
                case "W":
                    pos = Point(x: pos.x - 1, y: pos.y)
                default:
                    continue
            }

            guard !pointSet.contains(pos) else {
                return true
            }

            pointSet.insert(pos)
        }

        return false
    }
}
