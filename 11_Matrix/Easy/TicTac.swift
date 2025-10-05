// https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/

class Solution {
    func tictactoe(_ moves: [[Int]]) -> String {
             let winConditions: [Set<[Int]>] = [
            [[0, 0], [0, 1], [0, 2]], 
            [[1, 0], [1, 1], [1, 2]], 
            [[2, 0], [2, 1], [2, 2]], 
            [[0, 0], [1, 0], [2, 0]], 
            [[0, 1], [1, 1], [2, 1]], 
            [[0, 2], [1, 2], [2, 2]], 
            [[2, 0], [1, 1], [0, 2]], 
            [[0, 0], [1, 1], [2, 2]], 
        ]

        var aPoints = Set<[Int]>()
        var bPoints = Set<[Int]>()

            for i in 0..<moves.count{
            if i % 2 == 0 {
                aPoints.insert(moves[i])
            } else {
                bPoints.insert(moves[i])
            }
        }

        for condition in winConditions {
            if condition.isSubset(of: aPoints){
                return "A"
            }
            if condition.isSubset(of: bPoints){
                return "B"
            }
        }
        return moves.count == 9 ? "Draw" : "Pending"

    }
}
