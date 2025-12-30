//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/deletion-and-reverse-in-linked-list/1

import Foundation

// Definition for singly circular linked list node
class Node<T> {
    var value: T
    var next: Node?

    init(_ value: T) {
        self.value = value
    }
}

// Function to delete first occurrence of key in circular linked list
func deleteNode<T>(head: Node<T>?, key: T) -> Node<T>? where T: Equatable {
    guard head != nil else { return nil } // Empty list

    var current = head
    var prev: Node<T>? = nil

    repeat {
        if current!.value == key {
            if current === head {
                // Key is at head
                if head?.next === head {
                    // Only one node
                    return nil
                } else {
                    // Find last node to update its next
                    var last = head
                    while last?.next !== head {
                        last = last?.next
                    }
                    last?.next = head?.next
                    return head?.next
                }
            } else {
                // Key is not head
                prev?.next = current?.next
                return head
            }
        }
        prev = current
        current = current?.next
    } while current !== head

    return head // Key not found
}

// Helper function to print circular linked list
func printCircularList<T>(_ head: Node<T>?) {
    guard head != nil else {
        print("nil")
        return
    }

    var current = head
    repeat {
        print(current!.value, terminator: " -> ")
        current = current?.next
    } while current !== head
    print("(head)")
}

// Example Usage
let head = Node(10)
let node2 = Node(20)
let node3 = Node(30)
let node4 = Node(40)

// Making it circular
head.next = node2
node2.next = node3
node3.next = node4
node4.next = head

print("Original Circular List:")
printCircularList(head)

let newHead = deleteNode(head: head, key: 10) // Delete head
print("After deleting 10:")
printCircularList(newHead)

let newHead2 = deleteNode(head: newHead, key: 30) // Delete middle node
print("After deleting 30:")
printCircularList(newHead2)

let newHead3 = deleteNode(head: newHead2, key: 50) // Key not present
print("After trying to delete 50:")
printCircularList(newHead3)
