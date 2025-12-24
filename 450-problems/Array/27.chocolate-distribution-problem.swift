//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/chocolate-distribution-problem3825/1

func chocolateDestrivution(_ arr: [Int], m: Int) {
    var maxDiff = Int.max

    let arr = arr.sorted()

    for i in 0...(arr.count - m) {
        let diff = arr[i+m-1] - arr[i]
        maxDiff = min(maxDiff, diff)
    }
    print(maxDiff)
}

print(chocolateDestrivution([7, 3, 2, 4, 9, 12, 56], m: 3))
