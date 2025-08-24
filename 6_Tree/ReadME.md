# Tree DSA Theory (Swift)

A compact, interview‑oriented guide to trees in DSA with **Swift** code you can paste into a playground or project.

---

## Table of Contents

* [1. What is a Tree?](#1-what-is-a-tree)
* [2. Core Terminology](#2-core-terminology)
* [3. Representations](#3-representations)
* [4. Traversals](#4-traversals)
* [5. Binary Trees](#5-binary-trees)
* [6. Binary Search Trees (BST)](#6-binary-search-trees-bst)
* [7. Self-Balancing BSTs (concepts)](#7-self-balancing-bsts-concepts)
* [8. Heaps (Binary Heap in Swift)](#8-heaps-binary-heap-in-swift)
* [9. Tries (Prefix Trees)](#9-tries-prefix-trees)
* [10. Segment Tree & Fenwick Tree](#10-segment-tree--fenwick-tree)
* [11. LCA & Binary Lifting (outline)](#11-lca--binary-lifting-outline)
* [12. Tree DP Patterns](#12-tree-dp-patterns)
* [13. Common Interview Patterns](#13-common-interview-patterns)
* [14. Complexity Summary](#14-complexity-summary)
* [15. Practice Checklist](#15-practice-checklist)

---

## 1. What is a Tree?

A **tree** is a connected, acyclic graph. In code, we model a node with a value and links to children.

**Properties:**

* `n` nodes → exactly `n − 1` edges.
* Exactly one simple path between any two nodes.
* A **rooted** tree picks a root and treats edges as parent→child.

---

## 2. Core Terminology

* **Root, Parent, Child, Sibling**
* **Leaf**: node with no children
* **Depth**: edges from root to node
* **Height**: max edges down to a leaf (height of tree = height of root)
* **Binary tree**: ≤ 2 children (left, right)
* **Full / Perfect / Complete / Balanced**

---

## 3. Representations

### 3.1 Binary Tree Node

```swift
final class TreeNode<T> {
    var val: T
    var left: TreeNode<T>?
    var right: TreeNode<T>?
    init(_ val: T, _ left: TreeNode<T>? = nil, _ right: TreeNode<T>? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}
```

### 3.2 General (k‑ary) Tree Node

```swift
final class KNode<T> {
    var val: T
    var children: [KNode<T>] = []
    init(_ val: T, _ children: [KNode<T>] = []) { self.val = val; self.children = children }
}
```

### 3.3 Array (implicit) for complete binary trees (heaps)

Index mapping: `left = 2*i + 1`, `right = 2*i + 2`, `parent = (i - 1)/2`.

---

## 4. Traversals

### 4.1 DFS (Recursive)
A tree, where we first completely traverse the left subtree and then move to the right subtree. 

```swift
func preorder<T>(_ root: TreeNode<T>?, _ visit: (T) -> Void) {
    guard let node = root else { return }
    visit(node.val)
    preorder(node.left, visit)
    preorder(node.right, visit)
}

func inorder<T>(_ root: TreeNode<T>?, _ visit: (T) -> Void) {
    guard let node = root else { return }
    inorder(node.left, visit)
    visit(node.val)
    inorder(node.right, visit)
}

func postorder<T>(_ root: TreeNode<T>?, _ visit: (T) -> Void) {
    guard let node = root else { return }
    postorder(node.left, visit)
    postorder(node.right, visit)
    visit(node.val)
}
```

### 4.2 BFS (Level Order)

```swift
func levelOrder<T>(_ root: TreeNode<T>?) -> [[T]] {
    guard let root = root else { return [] }
    var result: [[T]] = []
    var queue: [TreeNode<T>] = [root]
    while !queue.isEmpty {
        var level: [T] = []
        for _ in 0..<queue.count { // fixed count per level
            let node = queue.removeFirst()
            level.append(node.val)
            if let l = node.left { queue.append(l) }
            if let r = node.right { queue.append(r) }
        }
        result.append(level)
    }
    return result
}
```

### 4.3 Morris Inorder (O(1) extra space)

```swift
func morrisInorder(_ root: TreeNode<Int>?) -> [Int] {
    var res: [Int] = []
    var cur = root
    while let node = cur {
        if node.left == nil {
            res.append(node.val)
            cur = node.right
        } else {
            var pre = node.left
            while pre?.right != nil && !(pre?.right === node) { pre = pre?.right }
            if pre?.right == nil { // make thread
                pre?.right = node
                cur = node.left
            } else { // remove thread
                pre?.right = nil
                res.append(node.val)
                cur = node.right
            }
        }
    }
    return res
}
```

---

## 5. Binary Trees

### Diameter (longest path in edges between any two nodes)

```swift
func diameter(_ root: TreeNode<Int>?) -> Int {
    var best = 0
    @discardableResult
    func height(_ node: TreeNode<Int>?) -> Int {
        guard let node = node else { return -1 } // edges height
        let hl = height(node.left)
        let hr = height(node.right)
        best = max(best, hl + hr + 2)
        return 1 + max(hl, hr)
    }
    _ = height(root)
    return best
}
```

Other frequent checks: balance, symmetry, path sums, serialization, build from traversals.

---

## 6. Binary Search Trees (BST)

### BST Node (Comparable)

```swift
final class BSTNode<T: Comparable> {
    var key: T
    var left: BSTNode?
    var right: BSTNode?
    init(_ key: T) { self.key = key }
}
```

### Search / Insert

```swift
func bstSearch<T: Comparable>(_ root: BSTNode<T>?, _ key: T) -> BSTNode<T>? {
    var cur = root
    while let node = cur {
        if key == node.key { return node }
        cur = key < node.key ? node.left : node.right
    }
    return nil
}

@discardableResult
func bstInsert<T: Comparable>(_ root: inout BSTNode<T>?, _ key: T) -> BSTNode<T> {
    guard let node = root else { let n = BSTNode(key); root = n; return n }
    if key < node.key { return bstInsert(&root!.left, key) }
    else { return bstInsert(&root!.right, key) }
}
```

### Delete (3 cases)

```swift
func bstDelete<T: Comparable>(_ root: inout BSTNode<T>?, _ key: T) {
    func minNode(_ n: BSTNode<T>?) -> BSTNode<T>? { var c = n; while c?.left != nil { c = c?.left }; return c }
    func delete(_ node: inout BSTNode<T>?, _ key: T) {
        guard let cur = node else { return }
        if key < cur.key { delete(&node!.left, key) }
        else if key > cur.key { delete(&node!.right, key) }
        else {
            if cur.left == nil { node = cur.right; return }
            if cur.right == nil { node = cur.left; return }
            if let succ = minNode(cur.right) {
                node!.key = succ.key
                delete(&node!.right, succ.key)
            }
        }
    }
    delete(&root, key)
}
```

