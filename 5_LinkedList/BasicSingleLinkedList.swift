// Single linked list only have next pointer. There is only one way to access and element which is to use loop unlike arry you cannot access directly via index. ex; arr[0]
// This linkedlist will cover basic linkedinOperation

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

}

let newNode = Node(value: 0)
let newbasicLinkedList = BasicLinkedList<Int>()
newbasicLinkedList.insertLinkedLast(input: newNode)
newbasicLinkedList.insertLinkedLast(input: Node(value: 1))
newbasicLinkedList.insertLinkedFirst(input: Node(value: -1))
newbasicLinkedList.traverseLinkedListIteratively()
newbasicLinkedList.traverseLinkedListRecusrsive(node: newbasicLinkedList.head)
