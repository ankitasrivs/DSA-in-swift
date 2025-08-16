
// https://www.geeksforgeeks.org/dsa/remove-every-k-th-node-linked-list/

   func deleteEveryKth(k: Int) {

        if head == nil {
            return
        }
         var c = 0
        var node = head
        var prev: Node<T>?

        while node != nil {
            c += 1
            // if multiple
            if c % k == 0 {

                if prev != nil {
                    prev?.next = node?.next
                } else {
                    //  No prev means we are stuck at head
                    head = node?.next
                }
            } else {
                prev = node
            }

            node = node?.next

        }
    }

/*
Time: O(n)
Space: O(1)
*/
