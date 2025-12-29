//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/sort-by-set-bit-count1153/1

func sortBySetBits(_ arr: [Int]) -> [Int] {

    func countSetBits(_ n: Int) -> Int {
        var x = n
        var count = 0
        while x > 0 {
            count += x & 1
            x >>= 1
        }
        return count
    }

    // Attach value, setBits, originalIndex
    let decorated = arr.enumerated().map { (index, value) in
        (value, countSetBits(value), index)
    }

    // Sort by:
    // 1) setBits descending
    // 2) index ascending (stability)
    let sortedDecorated = decorated.sorted {
        if $0.1 != $1.1 {
            return $0.1 > $1.1
        }
        return $0.2 < $1.2
    }

    return sortedDecorated.map { $0.0 }
}
