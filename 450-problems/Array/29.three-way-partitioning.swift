//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/three-way-partitioning/1

func threeWayPartition(_ arr: inout [Int], _ a: Int, _ b: Int) -> Bool {
    var low = 0
    var mid = 0
    var high = arr.count - 1

    while mid <= high {
        if arr[mid] < a {
            arr.swapAt(low, mid)
            low += 1
            mid += 1
        } else if arr[mid] > b {
            arr.swapAt(mid, high)
            high -= 1
        } else {
            mid += 1
        }
    }
    return true
}

// Example
var arr = [1, 4, 3, 6, 2, 1]
let a = 1
let b = 3

print(threeWayPartition(&arr, a, b)) // true
print(arr) // [1, 2, 3, 3, 4] (valid partition)
