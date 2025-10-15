// https://leetcode.com/problems/binary-tree-paths/

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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var paths = [String]()
        
        func findPath(root: TreeNode?, path: String) {
            guard let root else {
                return
            }

            var newPath = path

            if path != "" {
                newPath += "->"
            }
            
            newPath += String(root.val)

            if root.left == nil && root.right == nil {
                paths.append(newPath)
                return
            }

            findPath(root: root.left, path: newPath)
            findPath(root: root.right, path: newPath)
        }

        findPath(root: root, path: "")

        return paths
    }
}
