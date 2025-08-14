
// https://www.geeksforgeeks.org/dsa/nth-node-from-the-end-of-a-linked-list/
func printNthNode(c: Int) {
        var node = head
        var ref_node = head
        var c = c
        while c > 0 {
            ref_node = ref_node?.next
            c -= 1
        }
        print(ref_node?.value)
    }

/*
Time: O(n)
Space: O(1)
*/
