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
        // Opening brackets
        if ch == "(" || ch == "{" || ch == "[" {
            stack.append(ch)
        }
        // Closing brackets
        else {
            if stack.isEmpty {
                return false
            }
            let top = stack.removeLast()
            if matching[ch] != top {
                return false
            }
        }
    }

    return stack.isEmpty
}
