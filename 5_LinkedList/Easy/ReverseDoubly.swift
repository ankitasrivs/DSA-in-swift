
// https://www.geeksforgeeks.org/dsa/reverse-a-doubly-linked-list/
func reverseRecursive(node: DoublyNode<T>?) {
        if node == nil {
            return
        }
        let temp = node?.next
        node?.next = node?.prev
        node?.prev = temp

        if node?.prev == nil {
            head = node
        }

        reverseRecursive(node: node?.prev)
    }

    func reverseIterative() {
        var node = head
        var prev = head?.prev
        while node != nil {
            prev = node?.prev
            node?.prev = node?.next
            node?.next = prev
            // as now node next is node prev
            node = node?.prev
        }
        print(prev?.value, prev?.prev?.value, prev?.next?.value)
        head = prev?.prev
    }


/*
Time: O(n)
Space: O(n)
*/
