//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/circular-linked-list/1

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
}

func isCircular(_ head: ListNode?) -> Bool {
    guard let head = head else { return false }

    var slow: ListNode? = head
    var fast: ListNode? = head

    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        if slow === fast {  // cycle detected
            return true
        }
    }

    return false
}
