// https://www.geeksforgeeks.org/dsa/write-a-function-that-counts-the-number-of-times-a-given-int-occurs-in-a-linked-list/


   // Count Occurrences in a Linked List
    func countOccurrences(k: Int) {
        var node = head
        var c = 0
        while node != nil {
            if node!.value == k {
                c += 1
            }
            node = node?.next
        }
        print(c)
    }

/*
Time: O(n)
Space: O(1)
*/
