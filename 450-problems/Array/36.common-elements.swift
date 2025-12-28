//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/common-elements1132/1

func commonElements(_ A: [Int], _ B: [Int], _ C: [Int]) -> [Int] {
    var i = 0, j = 0, k = 0
    var result: [Int] = []

    while i < A.count && j < B.count && k < C.count {

        // If all three are equal
        if A[i] == B[j] && B[j] == C[k] {

            // Avoid duplicates in result
            if result.isEmpty || result.last! != A[i] {
                result.append(A[i])
            }

            let value = A[i]

            // Skip duplicates in A
            while i < A.count && A[i] == value { i += 1 }
            // Skip duplicates in B
            while j < B.count && B[j] == value { j += 1 }
            // Skip duplicates in C
            while k < C.count && C[k] == value { k += 1 }

        }
        // Move the smallest pointer
        else if A[i] < B[j] {
            i += 1
        } else if B[j] < C[k] {
            j += 1
        } else {
            k += 1
        }
    }

    return result.isEmpty ? [-1] : result
}
