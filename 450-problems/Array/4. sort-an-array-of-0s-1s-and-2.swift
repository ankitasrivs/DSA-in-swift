

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/sort-an-array-of-0s-1s-and-2s4231/1

func kthElement(arr: inout [Int]) {
    var low = 0
    var medium = 0
    var high = arr.count - 1

    while medium <= high {
        switch arr[medium] {
        case 0:
            arr.swapAt(low, medium)
            low += 1
            medium += 1
        case 1:
            medium += 1
        default:
            arr.swapAt(high, medium)
            high -= 1
        }
    }
}

var arr = [0, 1, 2, 0, 1, 2]
kthElement(arr: &arr)
print(arr)
// Time: O(n)
//Space: O(n)
