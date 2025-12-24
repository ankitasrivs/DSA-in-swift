//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/array-subset-of-another-array2317/1

func subsetProb(arr1: [Int], arr2: [Int]) {

   print(Set(arr2).isSubset(of: Set(arr1)))
}

subsetProb(arr1: [11, 7, 1, 13, 21, 3, 7, 3], arr2: [11, 3, 7, 1, 7])

func isSubset1(a: [Int], b: [Int]) -> Bool {
    let setA = Set(a)  // O(n)

    for element in b { // O(m)
        if !setA.contains(element) {
            return false
        }
    }
    return true
}

print(isSubset1(a: [11, 7, 1, 13, 21, 3, 7, 3], b: [11, 3, 7, 1, 7]))
