// https://www.geeksforgeeks.org/dsa/delete-middle-of-linked-list/
func deleteMiddle() {

        if head == nil || head?.next == nil {
            print("nil")
        }
        var slow = head
        var fast = head
        var prev: Node<T>?

        while fast != nil && fast?.next != nil {
            prev = slow
            slow = slow?.next
            fast = fast?.next?.next
        }
        prev?.next = slow?.next
    }

/*
Time: O(n)
Space: O(1)
*/
