//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/rotate-by-90-degree0356/1

//Clockwise → reverse each row

// Anticlockwise → reverse each column


func rotateMatrixClockwise(matrix: inout [[Int]]) {
    for i in 0..<matrix.count {
        for j in i+1..<matrix.count {
            (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
        }
    }
    // Step 2: Reverse each row
    for i in 0..<matrix.count {
        matrix[i].reverse()
    }
}
// Example
var mat = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

rotateMatrixAntiClockwise(matrix: &mat)
print(mat)


// AnticlockWise

func rotateMatrixAntiClockwise(matrix: inout [[Int]]) {
    for i in 0..<matrix.count {
        for j in i+1..<matrix.count {
            (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
        }
    }
    for col in 0..<matrix.count {
        var top = 0
        var bottom = matrix.count - 1
        while top < bottom {
            (matrix[top][col], matrix[bottom][col]) =
            (matrix[bottom][col], matrix[top][col])
            top += 1
            bottom -= 1
        }
    }

}
