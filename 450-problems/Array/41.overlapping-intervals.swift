//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/overlapping-intervals--170633/1


func mergeIntervals(_ intervals: [[Int]]) -> [[Int]] {
    if intervals.isEmpty { return [] }

    // 1. Sort by start
    let sorted = intervals.sorted { $0[0] < $1[0] }

    var result = [[Int]]()
    var current = sorted[0]

    for i in 1..<sorted.count {
        let next = sorted[i]

        // Overlapping
        if next[0] <= current[1] {
            current[1] = max(current[1], next[1])
        } else {
            result.append(current)
            current = next
        }
    }

    // Add last interval
    result.append(current)

    return result
}

print(mergeIntervals([[1, 3], [2, 4], [6, 8], [9, 10]]))

