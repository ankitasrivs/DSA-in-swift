https://leetcode.com/problems/island-perimeter/

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        var height = grid.count - 1
        var length = grid[0].count - 1
        for indexOne in 0...height {
            for indexTwo in 0...length {
                if grid[indexOne][indexTwo] == 1 {
                    // checking top
                    if (indexOne - 1) >= 0 {
                        if grid[indexOne - 1][indexTwo] == 0 { perimeter += 1 }
                    } else { perimeter += 1 }
                    // checking bottom
                    if (indexOne + 1) <= height {
                        if grid[indexOne + 1][indexTwo] == 0 { perimeter += 1 }
                    } else { perimeter += 1 }
                    // checking left
                    if (indexTwo - 1) >= 0 {
                        if grid[indexOne][indexTwo - 1] == 0 { perimeter += 1 }
                    } else { perimeter += 1 }
                    // checking righte
                    if (indexTwo + 1) <= length {
                        if grid[indexOne][indexTwo + 1] == 0 { perimeter += 1 }
                    } else { perimeter += 1 }
                }
            }
        }
        return perimeter
    }
}
