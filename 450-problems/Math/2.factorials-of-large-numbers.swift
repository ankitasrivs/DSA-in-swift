//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/factorials-of-large-numbers2508/1

func factorialDigits(_ n: Int) -> [Int] {
    // Array to store digits (least significant digit first)
    var digits = [1]

    if n == 0 || n == 1 {
        return digits
    }

    for num in 2...n {
        var carry = 0

        for i in 0..<digits.count {
            let product = digits[i] * num + carry
            digits[i] = product % 10
            carry = product / 10
        }

        while carry > 0 {
            digits.append(carry % 10)
            carry /= 10
        }
    }

    // Reverse to get correct order
    return digits.reversed()
}
