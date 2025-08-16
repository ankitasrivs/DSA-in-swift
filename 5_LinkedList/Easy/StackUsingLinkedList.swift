// https://www.geeksforgeeks.org/dsa/implement-a-stack-using-singly-linked-list/


class StackUsingLinkedList<T: BinaryInteger> {
    var head: Node<T>?


    func push(node: Node<T>?) {
        if head == nil {
            head = node
            return
        }
        node?.next = head
        head = node


    }

    func pop() {
        head = head?.next
    }

    func peek() {
        print(head?.value)
    }

    func printQueue() {
        var node = head
        while node != nil {
            print(node?.value)
            node = node?.next
        }
    }
}

// Time: O(n)
// Space: O(1)
