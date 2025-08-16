// https://www.geeksforgeeks.org/dsa/rotate-a-linked-list/#expected-approach-by-changing-pointer-of-kth-node-on-time-and-o1-space

  func rotateLinkedList(pos: Int) {
        var c = 0
        var node = head
        while node?.next != nil {
            node = node?.next
            c += 1
        }
        // MAke it cicular
        node?.next = head
        node = head

        let k = pos % c

        for i in 1..<k {
            node = node?.next
        }
        head = node?.next
        node?.next = nil

    }

/*
Time: O(n)
Space: O(1)
*/
