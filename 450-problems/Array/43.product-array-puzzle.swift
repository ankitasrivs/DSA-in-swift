//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/product-array-puzzle4525/1


func productExceptSelf(_ arr: [Int]) -> [Int] {
    var res = Array(repeating: 1, count: arr.count)
    var left = Array(repeating: 1, count: arr.count)
    var right = Array(repeating: 1, count: arr.count)

    for i in 1..<arr.count {
        left[i] = left[i-1] * arr[i-1]
    }


    for i in stride(from: arr.count - 2, through: 0, by: -1) {
        right[i] = right[i+1] * arr[i+1]
    }

    for i in 0..<arr.count {
        res[i] = left[i] * right[i]
    }

    return res
}


print(productExceptSelf([10, 3, 5, 6, 2]))
