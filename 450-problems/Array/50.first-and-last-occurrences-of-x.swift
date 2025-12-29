//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/first-and-last-occurrences-of-x3116/1

func firstAndLastOccurrence(_ arr: [Int], _ x: Int) -> (Int, Int) {
    let n = arr.count

    func first() -> Int {
        var low = 0, high = n - 1
        var res = -1
        while low <= high {
            let mid = (low + high) / 2
            if arr[mid] == x {
                res = mid
                high = mid - 1   // search left for first occurrence
            } else if arr[mid] < x {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return res
    }

    func last() -> Int {
        var low = 0, high = n - 1
        var res = -1
        while low <= high {
            let mid = (low + high) / 2
            if arr[mid] == x {
                res = mid
                low = mid + 1    // search right for last occurrence
            } else if arr[mid] < x {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return res
    }

    return (first(), last())
}
