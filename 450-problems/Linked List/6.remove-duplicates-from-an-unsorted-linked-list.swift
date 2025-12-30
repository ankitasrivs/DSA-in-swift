//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/remove-duplicates-from-an-unsorted-linked-list/1


class Node {
    var data: Int
    var next: Node?

    init(_ data: Int) {
        self.data = data
        self.next = nil
    }
}

func removeDuplicatesUnsorted(_ head: Node?) -> Node? {
    var curr = head
    var prev: Node? = nil
    var seen = Set<Int>()

    while curr != nil {
        if seen.contains(curr!.data) {
            prev!.next = curr!.next   // remove duplicate
        } else {
            seen.insert(curr!.data)
            prev = curr
        }
        curr = curr!.next
    }
    return head
}
