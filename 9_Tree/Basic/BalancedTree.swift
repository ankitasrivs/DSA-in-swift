
// https://leetcode.com/problems/balanced-binary-tree/
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
     guard let root else {
        return true
     }

     func getHeight(_ root1: TreeNode?) -> Int {
        guard let root1 else {
        return 0
     }
     let left = getHeight(root1.left)
     let right = getHeight(root1.right)

     if left == -1 || right == -1 {
        return -1
     }

     if abs(left-right) > 1 {
        return -1
     }  

        return max(left, right) + 1 
     }

        return getHeight(root) != -1
    }
}
