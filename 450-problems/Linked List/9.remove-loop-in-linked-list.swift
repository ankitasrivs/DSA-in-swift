//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/remove-loop-in-linked-list/1

import Foundation

// Definition for singly-linked list node
class ListNode<T> {
    var value: T
    var next: ListNode?

    init(_ value: T) {
        self.value = value
    }
}

// Function to detect and remove loop
func removeLoop<T>(head: ListNode<T>?) {
    guard head != nil else { return }

    var slow = head
    var fast = head

    // Step 1: Detect loop using Floyd’s Cycle Detection
    var loopExists = false
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            loopExists = true
            break
        }
    }

    // Step 2: Remove loop if exists
    if loopExists {
        slow = head
        if slow === fast {
            // Special case: loop starts at head
            while fast?.next !== slow {
                fast = fast?.next
            }
        } else {
            while slow?.next !== fast?.next {
                slow = slow?.next
                fast = fast?.next
            }
        }
        // Break the loop
        fast?.next = nil
    }
}

// Helper function to print linked list
func printList<T>(_ head: ListNode<T>?) {
    var current = head
    var count = 0
    while current != nil && count < 20 { // Avoid infinite loop in case loop not removed
        print(current!.value, terminator: " -> ")
        current = current?.next
        count += 1
    }
    if current != nil {
        print("...")
    } else {
        print("nil")
    }
}

// Example usage
let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = head.next // Creates a loop (4 -> 2)

print("Before removing loop:")
printList(head)

removeLoop(head: head)

print("After removing loop:")
printList(head)
