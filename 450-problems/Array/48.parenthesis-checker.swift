//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/parenthesis-checker2744/1

func isBalanced(_ s: String) -> Bool {
    var stack = [Character]()

    let matching: [Character: Character] = [
        ")": "(",
        "}": "{",
        "]": "["
    ]

    for ch in s {
        // Opening bracket
        if ch == "(" || ch == "{" || ch == "[" {
            stack.append(ch)
        }
        // Closing bracket
        else if let expected = matching[ch] {
            if stack.isEmpty || stack.removeLast() != expected {
                return false
            }
        }
    }

    return stack.isEmpty
}
