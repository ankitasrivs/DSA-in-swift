//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/given-a-linked-list-of-0s-1s-and-2s-sort-it/1

class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func sortList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }

    let zeroDummy = ListNode(-1)
    let oneDummy  = ListNode(-1)
    let twoDummy  = ListNode(-1)

    var zero = zeroDummy
    var one  = oneDummy
    var two  = twoDummy

    var curr = head

    while curr != nil {
        if curr!.val == 0 {
            zero.next = curr
            zero = zero.next!
        } else if curr!.val == 1 {
            one.next = curr
            one = one.next!
        } else {
            two.next = curr
            two = two.next!
        }
        curr = curr!.next
    }

    // Connect the lists
    two.next = nil
    one.next = twoDummy.next
    zero.next = oneDummy.next ?? twoDummy.next

    return zeroDummy.next
}
