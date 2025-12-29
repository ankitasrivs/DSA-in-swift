//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/find-first-node-of-loop-in-a-linked-list/

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
}

func findFirstNodeOfLoop(_ head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }

    var slow: ListNode? = head
    var fast: ListNode? = head

    // Step 1: Detect loop
    var loopExists = false
    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        if slow === fast {
            loopExists = true
            break
        }
    }

    if !loopExists {
        return nil  // No loop
    }

    // Step 2: Find starting node of loop
    slow = head
    while slow !== fast {
        slow = slow!.next
        fast = fast!.next
    }

    return slow  // Start of loop
}
