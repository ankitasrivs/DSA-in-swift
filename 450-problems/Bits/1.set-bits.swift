//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/set-bits0143/1


func countSetBits(_ n: Int) -> Int {
    var n = n
    var count = 0
    while n > 0 {
        if n % 2 == 1 {
            count += 1
        }
        n /= 2
    }
    return count
}



print(countSetBits(8))
