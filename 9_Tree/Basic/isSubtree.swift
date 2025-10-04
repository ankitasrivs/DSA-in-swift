// https://leetcode.com/problems/subtree-of-another-tree/

class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        func sameSubtree(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
            if root1 == nil, root2 == nil { return true }
            if root1 == nil || root2 == nil { return false }
            if root1?.val != root2?.val { return false }

            return sameSubtree(root1?.left, root2?.left) &&
                   sameSubtree(root1?.right, root2?.right)
        }

        // Base cases
        if root == nil && subRoot == nil { return true }
        if root == nil || subRoot == nil { return false }

        // Check if current root matches or search left/right subtrees
        if sameSubtree(root, subRoot) {
            return true
        }

        return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
    }
}
