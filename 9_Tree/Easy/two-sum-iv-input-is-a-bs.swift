
https://leetcode.com/problems/two-sum-iv-input-is-a-bst/submissions/1802459628/
class Solution {
    
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    
        var values = [Int]()
        
        // Inorder dfs traversal
        func rec(_ node: TreeNode?) {
            guard let node = node else { return }
            rec(node.left)
            values.append(node.val)
            rec(node.right)
        }
        
        rec(root)
        
        var i = 0
        var j = values.count - 1
        
        while i < j {
            let sum = values[i] + values[j]
            if sum == k {
                return true
            } else if sum < k {
                i += 1
            } else {
                j -= 1
            }
        }
        
        return false
    }
}
