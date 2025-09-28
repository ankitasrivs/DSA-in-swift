// https://leetcode.com/problems/maximum-depth-of-binary-tree/

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
    func maxDepth(_ root: TreeNode?) -> Int {
       guard let root = root else {
        return 0
       } 

       let left = maxDepth(root.left)
       let right =  maxDepth(root.right)

       return max(left,right) + 1
       
    }
}


class Solution {
    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var queue: [TreeNode] = [root]
        var height = 0
        
        while !queue.isEmpty {
            let levelSize = queue.count
            for _ in 0..<levelSize {
                let node = queue.removeFirst()
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            height += 1
        }
        
        return height
    }
}
