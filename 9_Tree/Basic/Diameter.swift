

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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var ans = 0

        func getDiam(_ root1: TreeNode?) -> Int {
            guard let root1 else {
                return 0
            }

            let left = getDiam(root1.left)
            let right = getDiam(root1.right) 

            ans = max(ans, left+right)
            return 1 + max(left,right)
        } 

         getDiam(root)
         return ans

    }
}
