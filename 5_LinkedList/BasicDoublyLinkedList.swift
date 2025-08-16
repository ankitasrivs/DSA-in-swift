class BasicDoublyLinkedList<T: BinaryInteger> {

    // use a varaible to check if you have first node or not as we need first node to start iterating. Either pass it in function or create a variable

    var head: DoublyNode<T>?


    // This method will add node at last
    func insertLinkedFirst(input: DoublyNode<T>?) {
        input?.next = head
        head?.prev = input
        // Now head shud be input
        head = input
    }

    func atSpecificPos(input: DoublyNode<T>?, pos: Int) {
        if pos == 0 {
            input?.next = head
            head?.prev = input
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
        input?.prev = node?.next
        node?.next?.next = next
        next?.prev = node?.next?.next

    }

    func insertLinkedLast(input: DoublyNode<T>?) {
        guard let head else {
            head = input
            return
        }
        // Not first node so we need loop to go to next. We are creating new var as we dont want tp change head since we will be using it it for different varaiable
        var newhead:DoublyNode<T>? = head
        // last will have no next
        while newhead?.next != nil {
            newhead = newhead?.next
        }
        newhead?.next = input
        input?.prev = newhead
    }


    // Print using loop
    func traverseLinkedListIteratively() {
        // Not first node so we need loop to go to next. We are creating new var as we dont want tp change head since we will be using it it for different varaiable
        var newhead:DoublyNode<T>? = head
        // last will have no next
        while newhead != nil {
            print("node value", newhead?.value, "prev.val", newhead?.prev?.value, "nextVal", newhead?.next?.value)
            newhead = newhead?.next
        }

    }

}

let newDoublyNode = DoublyNode(value: 0)
let doubly = BasicDoublyLinkedList<Int>()
doubly.insertLinkedLast(input: newDoublyNode)
doubly.insertLinkedLast(input: DoublyNode(value: 1))
doubly.insertLinkedLast(input: DoublyNode(value: 2))
doubly.insertLinkedLast(input: DoublyNode(value: 3))
doubly.insertLinkedLast(input: DoublyNode(value: 4))
doubly.traverseLinkedListIteratively()

