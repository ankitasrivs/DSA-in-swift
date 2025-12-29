//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/implement-queue-using-array/1

struct Queue {
    private var arr: [Int]
    private var front: Int = 0
    private var rear: Int = -1
    private var size: Int = 0
    private let capacity: Int

    init(_ n: Int) {
        self.capacity = n
        self.arr = Array(repeating: 0, count: n)
    }

    // Check if queue is empty
    func isEmpty() -> Bool {
        return size == 0
    }

    // Check if queue is full
    func isFull() -> Bool {
        return size == capacity
    }

    // Enqueue element
    mutating func enqueue(_ x: Int) -> Bool {
        if isFull() { return false }
        rear = (rear + 1) % capacity
        arr[rear] = x
        size += 1
        return true
    }

    // Dequeue element
    mutating func dequeue() -> Int {
        if isEmpty() { return -1 }
        let val = arr[front]
        front = (front + 1) % capacity
        size -= 1
        return val
    }

    // Get front element
    func getFront() -> Int {
        return isEmpty() ? -1 : arr[front]
    }

    // Get rear element
    func getRear() -> Int {
        return isEmpty() ? -1 : arr[rear]
    }
}
