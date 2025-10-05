// https://leetcode.com/problems/robot-return-to-origin/

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var vertical = 0
        var hori = 0
       for i in moves {
        if i == "U" {
            vertical += 1
        } else if i == "D" {
             vertical -= 1 
        } else if i == "R" {
            hori += 1
        } else {
            hori -= 1
        }
       }
       return hori == 0 && vertical == 0
    }
}
