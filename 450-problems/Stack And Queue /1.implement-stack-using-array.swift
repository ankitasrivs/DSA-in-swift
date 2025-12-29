//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/implement-stack-using-array/1

struct Stack<T> {
    private var elements: [T] = []

    // Check if stack is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }

    // Push element onto stack
    mutating func push(_ value: T) {
        elements.append(value)
    }

    // Pop element from stack
    @discardableResult
    mutating func pop() -> T? {
        return elements.popLast()
    }

    // Peek at top element
    func peek() -> T? {
        return elements.last
    }

    // Size of stack
    var size: Int {
        return elements.count
    }
}
