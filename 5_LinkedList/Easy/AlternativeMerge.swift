// https://www.geeksforgeeks.org/dsa/merge-a-linked-list-into-another-linked-list-at-alternate-positions/

func mergeAlternate(list1: Node?, list2: inout Node?) -> Node? {
    var curr1 = list1
    var curr2 = list2

    while curr1 != nil && curr2 != nil {
        // Save next pointers
        let next1 = curr1?.next
        let next2 = curr2?.next

        // Insert curr2 after curr1
        curr1?.next = curr2
        curr2?.next = next1

        // Move ahead
        curr1 = next1
        curr2 = next2
    }

    // After merge, list2 should be empty
    list2 = curr2
    return list1
}

/*
Time: O(n)
Space; O(1)
*/
