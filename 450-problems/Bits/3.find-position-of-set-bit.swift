//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-position-of-set-bit3706/1

func findPosition(_ n: Int) -> Int {
    // Step 1: check exactly one set bit
    if n <= 0 || (n & (n - 1)) != 0 {
        return -1
    }

    var num = n
    var position = 1

    // Step 2: count shifts until LSB is 1
    while (num & 1) == 0 {
        num >>= 1
        position += 1
    }

    return position
}

