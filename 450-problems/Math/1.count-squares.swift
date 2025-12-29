//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/count-squares3649/1


func countPerfectSquaresBrute(_ n: Int) -> Int {
    var count = 0
    var i = 1

    while i * i < n {
        count += 1
        i += 1
    }
    return count
}

