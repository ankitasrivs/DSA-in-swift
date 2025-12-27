//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/minimum-swaps-required-to-bring-all-elements-less-than-or-equal-to-k-together4847/1

func minSwapsToBringKTogether(_ arr: [Int], _ k: Int) -> Int {
    let n = arr.count

    // Step 1: count numbers <= k
    let count = arr.filter { $0 <= k }.count
    if count == 0 { return 0 }

    // Step 2: count bad numbers in first window
    var bad = 0
    for i in 0..<count {
        if arr[i] > k { bad += 1 }
    }

    var minSwaps = bad
    var left = 0
    var right = count

    // Step 3: sliding window
    while right < n {
        if arr[left] > k { bad -= 1 }   // leaving window
        if arr[right] > k { bad += 1 }  // entering window
        minSwaps = min(minSwaps, bad)
        left += 1
        right += 1
    }

    return minSwaps
}

// Example
let arr = [2, 1, 5, 6, 3]
let k = 3
print(minSwapsToBringKTogether(arr, k)) // 1
