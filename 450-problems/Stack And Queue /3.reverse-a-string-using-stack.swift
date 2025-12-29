//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/reverse-a-string-using-stack/1

func reverseStringUsingStack(_ s: String) -> String {
    var stack = [Character]()

    // Push characters into stack
    for ch in s {
        stack.append(ch)
    }

    // Pop characters to reverse
    var result = ""
    while !stack.isEmpty {
        let ch = stack.removeLast()
        result.append(ch)
    }

    return result
}
