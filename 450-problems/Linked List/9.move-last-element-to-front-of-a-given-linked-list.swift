//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/move-last-element-to-front-of-a-given-linked-list/

import Foundation

// Definition for singly-linked list node
class ListNode<T> {
    var value: T
    var next: ListNode?

    init(_ value: T) {
        self.value = value
    }
}

// Linked List class
class LinkedList<T> {
    var head: ListNode<T>?

    // Add node at the end
    func append(_ value: T) {
        let newNode = ListNode(value)
        if head == nil {
            head = newNode
            return
        }

        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }

    // Move last element to front
    func moveLastToFront() {
        guard head != nil, head?.next != nil else {
            return // Empty list or single element
        }

        var secondLast = head
        var last = head?.next

        while last?.next != nil {
            secondLast = secondLast?.next
            last = last?.next
        }

        // Detach last node
        secondLast?.next = nil

        // Move last node to front
        last?.next = head
        head = last
    }

    // Print the linked list
    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }
}

// Example
let list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.append(4)

print("Original List:")
list.printList() // 1 -> 2 -> 3 -> 4 -> nil

list.moveLastToFront()

print("After Moving Last to Front:")
list.printList() // 4 -> 1 -> 2 -> 3 -> nil
