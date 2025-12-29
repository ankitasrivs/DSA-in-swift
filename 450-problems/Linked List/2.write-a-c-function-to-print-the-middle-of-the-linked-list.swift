//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/write-a-c-function-to-print-the-middle-of-the-linked-list/

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
}

func findMiddle(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }

    var slow = head
    var fast = head

    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
    }

    return slow
}

// Helper to create list and print
func createList(_ arr: [Int]) -> ListNode? {
    let dummy = ListNode(0)
    var curr = dummy
    for v in arr {
        curr.next = ListNode(v)
        curr = curr.next!
    }
    return dummy.next
}

// Test
let head = createList([1,2,3,4,5])
if let mid = findMiddle(head) {
    print(mid.val) // Output: 3
}

let head2 = createList([1,2,3,4,5,6])
if let mid2 = findMiddle(head2) {
    print(mid2.val) // Output: 4 (second middle)
}

