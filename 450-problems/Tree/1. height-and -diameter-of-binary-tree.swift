//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/height-of-binary-tree/1
//https://www.geeksforgeeks.org/problems/diameter-of-binary-tree/1


class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


func height(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 } // empty tree
    return 1 + max(height(root.left), height(root.right))
}


func diameterOptimized(_ root: TreeNode?) -> (height: Int, diameter: Int) {
    guard let root = root else { return (0, 0) }

    let left = diameterOptimized(root.left)
    let right = diameterOptimized(root.right)

    let h = 1 + max(left.height, right.height)
    let d = max(left.height + right.height + 1, max(left.diameter, right.diameter))

    return (h, d)
}
