//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/triplet-sum-in-array-1587115621/1

import Foundation

func tripletSumExists(_ arr: [Int], target: Int) -> Bool {
    let sortedArr = arr.sorted()
    let n = sortedArr.count

    for i in 0..<n-2 {
        var left = i + 1
        var right = n - 1

        while left < right {
            let sum = sortedArr[i] + sortedArr[left] + sortedArr[right]

            if sum == target {
                return true
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
    }

    return false
}

// Example
let arr = [1, 4, 45, 6, 10, 8]
let target = 13
print(tripletSumExists(arr, target: target)) // Output: true
