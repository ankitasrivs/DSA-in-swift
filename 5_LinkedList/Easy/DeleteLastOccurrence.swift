// https://www.geeksforgeeks.org/dsa/delete-last-occurrence-of-an-item-from-linked-list/
func deleteLastOccurenceOfElement(val: Int) {
        var node = head
        var prev: Node<T>?
        while node != nil {
            if (node?.next?.value ?? -1000) == val {
                prev = node
            }
            node = node?.next
        }
        if prev == nil && val == head!.value {
            head = head?.next

        } else if prev != nil {

            prev?.next = prev?.next?.next
        } else {
            print("Not found")
        }
    }

/*
Time: O(n)
Space: O(1)
*/
