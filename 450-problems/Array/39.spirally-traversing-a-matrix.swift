//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/spirally-traversing-a-matrix-1587115621/1


func spiralMatrix(_ mat: [[Int]]) -> [Int] {
    var res = [Int]()

    var startRow = 0
    var startCol = 0
    var endRow = mat.count - 1
    var endCol = mat[0].count - 1

    while startRow <= endRow && startCol <= endCol {

        // 1️⃣ Top row
        for col in startCol...endCol {
            res.append(mat[startRow][col])
        }
        startRow += 1

        // 2️⃣ Right column
        if startRow <= endRow {
            for row in startRow...endRow {
                res.append(mat[row][endCol])
            }
        }
        endCol -= 1

        // 3️⃣ Bottom row
        if startRow <= endRow {
            for col in stride(from: endCol, through: startCol, by: -1) {
                res.append(mat[endRow][col])
            }
            endRow -= 1
        }

        // 4️⃣ Left column
        if startCol <= endCol {
            for row in stride(from: endRow, through: startRow, by: -1) {
                res.append(mat[row][startCol])
            }
            startCol += 1
        }
    }

    return res
}


let mat = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]

print(spiralMatrix(mat))


