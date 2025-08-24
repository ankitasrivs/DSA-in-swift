Got it 👍 The formatting of the `README.md` should be clean with proper Markdown hierarchy, fenced code blocks for Swift, and readable bullet points. Let me regenerate the **entire README.md** properly formatted:

---

# 🌳 Trees in Data Structures (DSA)

## 📖 What is a Tree?

A **tree** is a hierarchical data structure made up of nodes.

* Each tree has a **root** node.
* Each node can have **children**.
* Nodes without children are called **leaves**.
* Trees are widely used in databases, file systems, compilers, and searching algorithms.

---

## 🧩 Basic Terms

* **Root** → Topmost node.
* **Parent** → A node that has children.
* **Child** → A node derived from a parent.
* **Leaf** → A node with no children.
* **Height** → The longest path from root to a leaf.
* **Depth** → Distance from root to the current node.

---

## 🔍 Tree Traversals

Traversal = visiting every node in some order. Two main categories:

### 1️⃣ Depth-First Search (DFS)

Goes **deep into one branch before backtracking**.

* **Preorder (Root → Left → Right)**
* **Inorder (Left → Root → Right)**
* **Postorder (Left → Right → Root)**

#### Swift Code

```swift
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

// MARK: - DFS Traversals
func preorder(_ root: TreeNode?) {
    guard let node = root else { return }
    print(node.val, terminator: " ")
    preorder(node.left)
    preorder(node.right)
}

func inorder(_ root: TreeNode?) {
    guard let node = root else { return }
    inorder(node.left)
    print(node.val, terminator: " ")
    inorder(node.right)
}

func postorder(_ root: TreeNode?) {
    guard let node = root else { return }
    postorder(node.left)
    postorder(node.right)
    print(node.val, terminator: " ")
}
```

---

### 2️⃣ Breadth-First Search (BFS)

Visits nodes **level by level** using a queue.
This is also called **Level Order Traversal**.

#### Swift Code

```swift
func levelOrder(_ root: TreeNode?) {
    guard let root = root else { return }
    
    var queue: [TreeNode] = [root]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node.val, terminator: " ")
        
        if let left = node.left {
            queue.append(left)
        }
        if let right = node.right {
            queue.append(right)
        }
    }
}
```

---

## 📝 Example Tree

```
        1
       / \
      2   3
     / \   \
    4   5   6
```

### Traversal Results

* **Preorder (DFS)** → `1 2 4 5 3 6`
* **Inorder (DFS)** → `4 2 5 1 3 6`
* **Postorder (DFS)** → `4 5 2 6 3 1`
* **Level Order (BFS)** → `1 2 3 4 5 6`

---

✅ With this, you now know:

* The **difference between BFS and DFS**
* How **Inorder, Preorder, Postorder** are all **DFS**
* How **Level Order** is **BFS**
* Swift implementations of each

---
