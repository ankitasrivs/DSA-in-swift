// https://www.geeksforgeeks.org/problems/remove-duplicate-element-from-sorted-linked-list/1


    func removeDuplicateFromSortedLinkedList() {
        var node = head
        while node != nil {
            if node?.next?.value == node?.value {
                // ur next will be its next
                node?.next = node?.next?.next
            } else {
                node = node?.next
            }
        }
    }


/*
Time: O(n)
Space: O(1)
