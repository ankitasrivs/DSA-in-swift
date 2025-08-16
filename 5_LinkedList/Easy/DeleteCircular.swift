// https://www.geeksforgeeks.org/dsa/deletion-circular-linked-list/

    func deleteFromCircularFirst() {

        if head == nil {
            print("No node so returning")
            return
        } else if head?.next == nil {
            head = nil
            return
        } else {
            var node = head
        // Go to last and make last.next = head.next so now last will point to second node
            repeat {
                node = node?.next
            } while (node?.next !== head)
            node?.next = head?.next
                        head = head?.next
        }
    }

    func deleteFromCircularLast() {

        if head == nil {
            print("No node so returning")
            return
        } else if head?.next == nil {
            head = nil
            return
        } else {
            var node = head
        // Go to second last and make next as head
            repeat {
                node = node?.next
            } while (node?.next?.next !== head)
            node?.next = head

        }
    }


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
