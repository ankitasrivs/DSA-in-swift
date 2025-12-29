//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/count-the-reversals0401/1

func minReversals(_ s: String) -> Int {
    let n = s.count

    // Odd length cannot be balanced
    if n % 2 != 0 {
        return -1
    }

    var open = 0
    var close = 0

    for ch in s {
        if ch == "{" {
            open += 1
        } else {
            if open > 0 {
                open -= 1   // cancel valid pair
            } else {
                close += 1
            }
        }
    }

    // Minimum reversals formula
    return (open + 1) / 2 + (close + 1) / 2
}
