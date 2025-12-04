

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/kth-smallest-element5635/1

func kthElement(arr: [Int], k: Int) {
    let sorted = arr.sorted()
    print(sorted[k-1])
}


kthElement(arr: [10, 5, 4, 3, 48, 6, 2, 33, 53, 10], k: 4)

// Time: O(nlogn)
//Space: O(n)


func kthLargest1(arr: inout [Int], k: Int) -> Int {
    return kthQuickSelected(arr: &arr, low: 0, high: arr.count - 1, k: k-1)
}

func kthQuickSelected(arr: inout [Int], low: Int, high: Int, k: Int) -> Int {
 let pivotIndex = partition(arr: &arr, low: low, high: high)
    if pivotIndex == k {
        return arr[pivotIndex]
    } else if pivotIndex > k {
        return kthQuickSelected(arr: &arr, low:low, high: pivotIndex - 1, k: k)
    } else {
        return kthQuickSelected(arr: &arr, low: pivotIndex + 1, high: high, k: k)
    }
}


func partition(arr: inout [Int], low: Int, high: Int) -> Int {
    let pivot = arr[high]
    var i = low
    for j in low..<high {
        if arr[j] <= pivot {
            arr.swapAt(i, j)
            i += 1
        }
    }
    arr.swapAt(i, high)
    return i
}

var arr1 = [10, 5, 4, 3, 48, 6, 2, 33, 53, 10]
print(kthLargest1(arr: &arr1, k: 4))


// Time: O(n)
//Space: O(n)
