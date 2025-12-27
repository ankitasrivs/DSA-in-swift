//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-the-median0527/1

func findMedian(_ arr: [Int]) -> Double {
    guard !arr.isEmpty else { return 0.0 }

    let sortedArr = arr.sorted()
    let n = sortedArr.count

    if n % 2 != 0 {
        // Odd length → middle element
        return Double(sortedArr[n / 2])
    } else {
        // Even length → average of two middle elements
        return Double(sortedArr[n / 2 - 1] + sortedArr[n / 2]) / 2.0
    }
}


// Example
var arr: [Int] = [90, 100, 78, 89, 67]
var arr2 = [2, 4, 5, 6]

print(findMedian(arr)) // true
print(arr) // [1, 2, 3, 3, 4] (valid partition)
