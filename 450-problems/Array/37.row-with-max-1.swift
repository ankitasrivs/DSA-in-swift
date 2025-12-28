//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/row-with-max-1s0023/1


func rowIWth1(arr1: [[Int]]) {

    var maxRow = -1
    var i = 0
    var j = arr1[0].count - 1

    while i < arr1.count && j >= 0 {
        if arr1[i][j] ==  1 {
            maxRow = i
            j -= 1
        } else {
            i += 1
        }
    }

    print(maxRow)
}

rowIWth1(arr1: [[0,0], [0,0]])

