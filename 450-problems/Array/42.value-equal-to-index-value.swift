//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/value-equal-to-index-value1330/1


func findIndexValueMatches(_ arr: [Int]) -> [Int] {
    var result = [Int]()

    for i in 0..<arr.count {
        if arr[i] == i + 1 {   // i+1 because 1-based index
            result.append(i + 1)
        }
    }

    return result
}
