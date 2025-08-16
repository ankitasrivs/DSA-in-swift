
// https://www.geeksforgeeks.org/dsa/pairwise-swap-elements-of-a-given-linked-list/
func sortLinkedList() {
        // These will make sure starting point is referenced
        var zeroD: Node<T>? = Node(value: 0)
        var oneD: Node<T>? = Node(value: 0)
        var twoD: Node<T>? = Node(value: 0)

        var zero: Node<T>? = zeroD
        var one: Node<T>? = oneD
        var two: Node<T>? = twoD


        var node = head
        while node != nil {
            if node?.value == 0 {
                zero?.next = Node(value: 0)
                zero = zero?.next
            } else if node?.value == 1 {
                one?.next = Node(value: 1)
                one = one?.next
            } else {
                two?.next = Node(value: 2)
                two = two?.next
            }
            node = node?.next
        }

        zero?.next = oneD?.next
        one?.next = twoD?.next

        head = zeroD?.next

    }

/*
Time: O(n)
Space: O(1)
*?
