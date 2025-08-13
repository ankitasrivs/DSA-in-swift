
// https://www.geeksforgeeks.org/dsa/reverse-a-linked-list/    
func reverseLinkedList() {
        var node = head
        var prev: Node<T>?
        while node != nil {
            let next = node?.next
            node?.next = prev
            prev = node
            node = next
        }
        head = prev
    }

/*
Time: O(n)
Space: O(n)
*/

    func reverseLinkedListRecusrsive(node: Node<T>?) -> Node<T>? {
        guard  node != nil, node?.next != nil else {
            return node
        }
        let newNode = reverseLinkedListRecusrsive(node: node?.next)
        node?.next?.next = node
        node?.next = nil
        return newNode
    }
}


/*
Time: O(n)
Space: O(1)
*/
