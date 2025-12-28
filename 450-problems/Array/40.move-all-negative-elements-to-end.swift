//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/move-all-negative-elements-to-end1813/1


func moveNegativesToEndInPlace(_ arr: inout [Int]) {
    let n = arr.count
    var lastPositiveIndex = 0

    for i in 0..<n {
        if arr[i] >= 0 {
            let temp = arr[i]
            var j = i
            while j > lastPositiveIndex {
                arr[j] = arr[j - 1]
                j -= 1
            }
            arr[lastPositiveIndex] = temp
            lastPositiveIndex += 1
        }
    }
}


let mat = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
var x = [1, -1, 3, 2, -7, -5, 11, 6 ]
print(moveNegativesToEndInPlace(&x))
print(x)

