//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/sorted-matrix2333/1

func sortMatrix(_ mat: inout [[Int]]) {
    let n = mat.count

    // Step 1: Flatten matrix
    var flat = [Int]()
    for i in 0..<n {
        for j in 0..<n {
            flat.append(mat[i][j])
        }
    }

    // Step 2: Sort
    flat.sort()

    // Step 3: Put back into matrix
    var index = 0
    for i in 0..<n {
        for j in 0..<n {
            mat[i][j] = flat[index]
            index += 1
        }
    }
}
