//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/median-of-2-sorted-arrays-of-different-sizes/1

func findMedianSortedArrays(_ a: [Int], _ b: [Int]) -> Double  {
    var aCount = a.count
    var bCount = b.count

    if aCount > bCount {
        return findMedianSortedArrays(b, a)
    }
    var low = 0
    var high = a.count

    while low <= high {
      let cutA = (low + high)/2
      let cutB = (aCount + bCount + 1)/2 - cutA

        if aCount == 0 {
              if bCount % 2 == 0 {
                  return Double(b[bCount/2 - 1] + b[bCount/2]) / 2
              } else {
                  return Double(b[bCount/2])
              }
          }

      let leftA = cutA == 0 ? Int.min : a[cutA - 1]
      let leftB = cutB == 0 ? Int.min : a[cutB - 1]


        let rightA = cutA == aCount ? Int.max : a[cutA]
        let rightB = cutB == bCount ? Int.max : a[cutB]

        if leftA <= rightB && leftB <= rightA {
            if (aCount + bCount) % 2 == 0 {
                return Double(max(leftA, leftB) + max(rightA, rightB))/2
            } else {
                return Double(max(leftA, leftB))
            }

        } else if leftA > rightB {
            high = cutA - 1
        } else {
            low = cutA + 1
        }

    }

    return 0.0
}

// Example
var arr: [Int] = []
var arr2 = [2, 4, 5, 6]

print(findMedianSortedArrays(arr, arr2)) // true
print(arr) // [1, 2, 3, 3, 4] (valid partition)
