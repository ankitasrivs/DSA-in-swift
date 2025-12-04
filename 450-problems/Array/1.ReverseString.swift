//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/reverse-a-string/1

func reverseString(str: String) {
    print(String(str.reversed()))
}

// Time: O(n)
//Space: O(n)

reverseString(str: "geeks")

//BETTER

func reverseString1(str: String) {
    // Array of characters from string
    var ch = Array(str)
    var i = 0
    var j = str.count - 1

    while i < j {
        ch.swapAt(i, j)
        i += 1
        j -= 1
    }
    print(String(ch))
}

// Time: O(n)
//Space: O(n)

reverseString1(str: "geeks")

