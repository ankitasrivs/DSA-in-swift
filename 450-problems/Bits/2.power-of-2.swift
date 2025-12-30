//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/power-of-2-1587115620/1

/*

 Final logic in one sentence (INTERVIEW GOLD)

 A number is a power of 2 if it has only one set bit, and subtracting 1 flips that bit and all trailing zeros, making n & (n - 1) == 0.
 */

func isPowerOfTwo(_ n: Int) -> Bool {
    if n <= 0 { return false }
    return (n & (n - 1)) == 0
}

