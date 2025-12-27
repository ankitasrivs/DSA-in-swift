//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/palindromic-array-1587115620/1

import Foundation

func isPalindromeNumber(_ n: Int) -> Bool {
    var num = n
    var reversed = 0

    while num > 0 {
        let digit = num % 10
        reversed = reversed * 10 + digit
        num /= 10
    }

    return reversed == n
}

func areAllNumbersPalindrome(_ arr: [Int]) -> Bool {
    for num in arr {
        if !isPalindromeNumber(num) {
            return false
        }
    }
    return true
}

// Example usage:
let arr1 = [121, 33, 7, 454]
let arr2 = [121, 34, 7]

print(areAllNumbersPalindrome(arr1)) // true
print(areAllNumbersPalindrome(arr2)) // false
