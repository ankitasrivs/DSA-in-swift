// https://www.geeksforgeeks.org/dsa/pairwise-swap-elements-of-a-given-linked-list-by-changing-links/

  func pairWiseSwap() {
        var prev = head
        var curr = head?.next
        head = curr


        while true {
            let next = curr?.next
            curr?.next = prev
            if next == nil || next?.next == nil || curr == nil {
                // No 2 nodes
                prev?.next = next
                break
            }
            // Nodes will flip so 3,4 will be 4,3 so we are changing
            prev?.next = next?.next

            prev = next
            curr = prev?.next
        }
    }

/*
Time: O(n)
Space: O(1)
*/
