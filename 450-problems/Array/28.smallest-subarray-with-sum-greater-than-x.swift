//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/smallest-subarray-with-sum-greater-than-x5651/1

func smallestSubarrayWithSum(_ arr: [Int], _ x: Int)  {

    let n = arr.count
    var start = 0
    var sum = 0
    var minLength = Int.max

    for end in 0..<n {
        sum += arr[end]

        while sum > x {
            minLength = min(minLength, end - start + 1)
            sum -= arr[start]
            start += 1

        }
    }
    print(minLength)
}

print(smallestSubarrayWithSum([1, 4, 45, 6, 0, 19], 51))
