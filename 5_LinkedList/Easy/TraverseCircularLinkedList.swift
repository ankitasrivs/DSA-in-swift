
// Circular linked list means ur last node will point to first node and u will have a infinite loop if u dont check that u 
// have come to first again first time. Repeat while works because its execurted first time anyway so we will come to head.next


// https://www.geeksforgeeks.org/dsa/traversal-of-circular-linked-list/
   func printCircularList() {
        var node = head
        if node == nil {
            return
        }
        repeat {
            print(node?.value)
            node = node?.next
        } while(node !== head && node != nil)
    }

/*
Time: O(n)
Space: O(1)
*/
