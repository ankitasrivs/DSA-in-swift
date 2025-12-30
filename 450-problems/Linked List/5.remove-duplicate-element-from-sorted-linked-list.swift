//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/remove-duplicate-element-from-sorted-linked-list/1


class Node {
    var data: Int
    var next: Node?

    init(_ data: Int) {
        self.data = data
        self.next = nil
    }
}

func removeDuplicates(_ head: Node?) -> Node? {
    var curr = head

    while curr != nil && curr?.next != nil {
        if curr!.data == curr!.next!.data {
            // Skip duplicate
            curr!.next = curr!.next!.next
        } else {
            curr = curr!.next
        }
    }
    return head
}
