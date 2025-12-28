//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/reverse-a-string/1


func reverseStringInPlace(_ str: String) -> String {
    var chars = Array(str)
    var left = 0
    var right = chars.count - 1

    while left < right {
        chars.swapAt(left, right)
        left += 1
        right -= 1
    }

    return String(chars)
}


func reverseStringInPlace(_ str: String) -> String {
    var chars = Array(str)
    var left = 0
    var right = chars.count - 1

    while left < right {
        chars.swapAt(left, right)
        left += 1
        right -= 1
    }

    return String(chars)
}


func reverseString(_ str: String) -> String {
    return String(str.reversed())
}
