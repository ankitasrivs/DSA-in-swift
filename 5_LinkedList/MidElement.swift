
// https://www.geeksforgeeks.org/dsa/write-a-c-function-to-print-the-middle-of-the-linked-list/
    // This is called slow and fast pointer
    // Jump fast 2 and slow 1
    // When fast will be last then slow will be at mid
    func midLinkedlList() {
        var slow = head
        var  fast = head

        while fast?.next != nil && fast?.next?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        print(slow?.value)
    }

/*
Time: O(n)
Space: O(1)
*/


// Note one sol also is to count elements and take count/2 and run loop but the above is preferred
