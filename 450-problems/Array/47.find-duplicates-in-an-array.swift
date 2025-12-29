//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-duplicates-in-an-array/1


func findDuplicates(_ arr: [Int]) -> [Int] {
    var freq = [Int: Int]()
    var result = [Int]()

    for num in arr {
        freq[num, default: 0] += 1
        if freq[num] == 2 {
            result.append(num)
        }
    }

    return result
}
