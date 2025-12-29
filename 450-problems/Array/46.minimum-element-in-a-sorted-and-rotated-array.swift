//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/minimum-element-in-a-sorted-and-rotated-array3611/1


func findMin(_ arr: [Int]) -> Int {
    var low = 0
    var high = arr.count - 1

    while low < high {
        let mid = (low + high) / 2

        if arr[mid] > arr[high] {
            // Minimum is in right part
            low = mid + 1
        } else {
            // Minimum is in left part including mid
            high = mid
        }
    }

    return arr[low]
}

