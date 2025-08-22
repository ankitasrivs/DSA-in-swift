//https://www.geeksforgeeks.org/dsa/delete-n-nodes-after-m-nodes-of-a-linked-list/

  func deleteFromCircularAtpos(pos: Int) {
        // Assuming we are using 1 for 1st node
        if pos == 1 {
            deleteFromCircularFirst()
        } else {
            let c = countCircularList()
            if c == pos{
                deleteFromCircularLast()
                return
            }
            var node = head
            var prev = node
            for i in 1..<pos {
                 prev = node
                node = node?.next
            }
            prev?.next = node?.next

        }
    }

/*
Time: O(n)
Space: O(1)
*/
