//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/search-in-a-matrix-1587115621/1


func searchMatrix(_ mat: [[Int]], _ x: Int) -> Bool {
    let n = mat.count
    let m = mat[0].count

    var low = 0
    var high = n * m - 1

    while low <= high {
        let mid = (low + high) / 2
        let row = mid / m
        let col = mid % m

        let value = mat[row][col]

        if value == x {
            return true
        } else if value < x {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }

    return false
}


let mat = [
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 60]
]

print(searchMatrix(mat, 3))   // true
print(searchMatrix(mat, 133))  // false


