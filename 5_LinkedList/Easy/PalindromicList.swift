// https://leetcode.com/problems/palindrome-linked-list/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var node = head
        var list : [Int] = []
        while let current = node{
            list.append(current.val)
            node = current.next

        }
        return list == Array(list.reversed())
    }
}


class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard head != nil && head?.next != nil else { return true }
        
        // 1. Find middle using slow & fast pointers
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        // 2. Reverse second half
        var secondHalf = reverseList(slow?.next)
        var firstHalf = head
        
        // 3. Compare first and second half
        while secondHalf != nil {
            if firstHalf!.val != secondHalf!.val {
                return false
            }
            firstHalf = firstHalf?.next
            secondHalf = secondHalf?.next
        }
        
        return true
    }
    
    private func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        
        while curr != nil {
            let nextTemp = curr?.next
            curr?.next = prev
            prev = curr
            curr = nextTemp
        }
        return prev
    }
}
