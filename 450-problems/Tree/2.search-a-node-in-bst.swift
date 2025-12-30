//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/search-a-node-in-bst/1

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int) {
        self.val = val
    }
}

func searchBST(_ root: TreeNode?, _ key: Int) -> Bool {
    var curr = root

    while curr != nil {
        if curr!.val == key {
            return true
        } else if key < curr!.val {
            curr = curr!.left
        } else {
            curr = curr!.right
        }
    }

    return false
}

func searchBST(_ root: TreeNode?, _ key: Int) -> Bool {
    guard let node = root else { return false }

    if node.val == key {
        return true
    } else if key < node.val {
        return searchBST(node.left, key)
    } else {
        return searchBST(node.right, key)
    }
}
