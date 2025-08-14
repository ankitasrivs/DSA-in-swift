//
//  main.swift
//  DSQuestions
//
//  Created by Ankita Srivastava on 13/08/25.
//

import Foundation
// This linkedlist will cover basic linkedinOperation

class Node<T> {
    var value: T
    var next: Node?

    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


class BasicLinkedList<T> {

    // use a varaible to check if you have first node or not as we need first node to start iterating. Either pass it in function or create a variable

    var head: Node<T>?


    // This method will add node at last
    func insertLinkedFirst(input: Node<T>?) {
        input?.next = head
        // Now head shud be input
        head = input
    }

    func atSpecificPos(input: Node<T>?, pos: Int) {
        if pos == 0 {
            input?.next = head
            head = input
            return
        }

        var node = head
        var k = pos
        while k != 1 && node?.next != nil {
            node = node?.next
            k -= 1
        }
        let next = node?.next
        node?.next = input
        node?.next?.next = next
    }

    func insertLinkedLast(input: Node<T>?) {
        guard let head else {
            head = input
            return
        }
        // Not first node so we need loop to go to next. We are creating new var as we dont want tp change head since we will be using it it for different varaiable
        var newhead:Node<T>? = head
        // last will have no next
        while newhead?.next != nil {
            newhead = newhead?.next
        }
        newhead?.next = input
    }


    // Print using loop
    func traverseLinkedListIteratively() {
        // Not first node so we need loop to go to next. We are creating new var as we dont want tp change head since we will be using it it for different varaiable
        var newhead:Node<T>? = head
        // last will have no next
        while newhead != nil {
            print(newhead?.value)
            newhead = newhead?.next
        }

    }

    // Print using recusrion
    func traverseLinkedListRecusrsive(node: Node<T>?) {

        if node == nil {
            return
        }
        print(node?.value)
        traverseLinkedListRecusrsive(node: node?.next)

    }

    func deleteFirst() {
        head = head?.next
    }

    func deletelast() {
        var node = head
        while node?.next?.next != nil {
            node = node?.next
        }
        node?.next = nil
    }

    func deleteAtPos(pos: Int) {
        if pos == 0 {
            head = head?.next
            return
        }
        var node = head
        var k = pos - 1

        while k != 0 && node?.next != nil {
            node = node?.next
            k -= 1
        }
        let next = node?.next?.next
        node?.next = next
    }


    func count() {
        var count = 0
        var node = head
        while node != nil {
            count += 1
            node = node?.next
        }
        print(count)
    }

    func countRecursive(node: Node<T>?, count: Int = 0) {
        guard let node else {
            print(count)
            return
        }
        countRecursive(node: node.next,count: count + 1)
    }
}

let newNode = Node(value: 0)
let newbasicLinkedList = BasicLinkedList<Int>()
newbasicLinkedList.insertLinkedLast(input: newNode)
newbasicLinkedList.insertLinkedLast(input: Node(value: 1))
newbasicLinkedList.insertLinkedFirst(input: Node(value: -1))
newbasicLinkedList.atSpecificPos(input:  Node(value: -2), pos: 0)


newbasicLinkedList.count()
newbasicLinkedList.countRecursive(node: newbasicLinkedList.head)

