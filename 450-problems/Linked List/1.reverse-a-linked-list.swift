//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/reverse-a-linked-list/

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
}

func reverseIterative(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil, current = head
    while current != nil { let next = current!.next; current!.next = prev; prev = current; current = next }
    return prev
}

func reverseRecursive(_ head: ListNode?) -> ListNode? {
    guard let h = head, h.next != nil else { return head }
    let newHead = reverseRecursive(h.next)
    h.next!.next = h
    h.next = nil
    return newHead
}

// Helpers
func printList(_ head: ListNode?) { var curr = head; while curr != nil { print(curr!.val, terminator: " -> "); curr = curr!.next }; print("nil") }
func createList(_ arr: [Int]) -> ListNode? { let dummy = ListNode(0); var curr = dummy; for v in arr { curr.next = ListNode(v); curr = curr.next! }; return dummy.next }

// Example
let arr = [1,2,3,4,5]
let head = createList(arr)
printList(reverseIterative(head))
printList(reverseRecursive(createList(arr)))
