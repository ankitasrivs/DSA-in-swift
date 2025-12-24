//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/triplet-sum-in-array-1587115621/1

func hasTripletSum(arr: [Int], target: Int) -> Bool {
    let arr = arr.sorted()

    let n = arr.count

    for i in 0..<(n-2) {
        var left = i + 1
        var right = n - 1

        while left < right {
            let sum = arr[left] + arr[right] + arr[i]
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

print(hasTripletSum(arr:  [40, 20, 10, 3, 6, 7], target: 24))
