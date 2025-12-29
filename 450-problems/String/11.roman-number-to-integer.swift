//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/roman-number-to-integer3201/1

func romanToInt(_ s: String) -> Int {

    let value: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]

    var result = 0
    var prev = 0

    for ch in s.reversed() {
        let curr = value[ch]!

        if curr < prev {
            result -= curr
        } else {
            result += curr
        }

        prev = curr
    }

    return result
}
