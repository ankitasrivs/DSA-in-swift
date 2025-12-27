//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-the-median0527/1

import Foundation

func findMedianSameSizeArrays(_ A: [Int], _ B: [Int]) -> Double {
    let n = A.count
    var low = 0
    var high = n

    while low <= high {
        let cutA = (low + high) / 2
        let cutB = n - cutA  // since total elements = 2n, left half = n

        let leftA = cutA == 0 ? Int.min : A[cutA - 1]
        let leftB = cutB == 0 ? Int.min : B[cutB - 1]
        let rightA = cutA == n ? Int.max : A[cutA]
        let rightB = cutB == n ? Int.max : B[cutB]

        if leftA <= rightB && leftB <= rightA {
            // Correct partition found
            return Double(max(leftA, leftB) + min(rightA, rightB)) / 2.0
        } else if leftA > rightB {
            high = cutA - 1
        } else {
            low = cutA + 1
        }
    }

    return 0.0 // should never reach here if arrays are valid and same size
}
