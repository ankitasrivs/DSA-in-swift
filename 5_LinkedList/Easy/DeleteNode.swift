  // https://leetcode.com/problems/delete-node-in-a-linked-list/description/

    func deleteNode(node: inout Node<T>?) {
        node?.value = node?.next?.value
        node?.next = node?.next?.next
    }

/*
Time: O(1)
Space: O(1)
*/
