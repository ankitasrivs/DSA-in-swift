// https://www.geeksforgeeks.org/problems/remove-duplicate-element-from-sorted-linked-list/1


 class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        
        while let node = current {
            if let next = node.next, next.val == node.val {
                node.next = next.next
            } else {
                current = node.next
            }
        }
        
        return head
    }
}


/*
Time: O(n)
Space: O(1)
