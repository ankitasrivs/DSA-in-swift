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

    // Push characters onto stack
    for ch in s {
        stack.append(ch)
    }

    // Pop characters to build reversed string
    var reversed = ""
    while !stack.isEmpty {
        reversed.append(stack.removeLast())
    }

    return reversed
}

