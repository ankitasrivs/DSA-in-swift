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

/*
✅ Great — that’s the **correct and clean recursive solution** for [LeetCode 572: Subtree of Another Tree](https://leetcode.com/problems/subtree-of-another-tree/).

Let’s break down the **time and space complexity** precisely 👇

---

## 🔹 Time Complexity — **O(m × n)**

Let:

* `n` = number of nodes in `root`
* `m` = number of nodes in `subRoot`

### 🔸 Why O(m × n)?

1. For each node in `root`, you may potentially call `sameSubtree(root, subRoot)`.
2. `sameSubtree` itself can visit up to all `m` nodes in `subRoot` (in the worst case).

So total worst-case operations ≈ `n * m`.

---

### ⚙️ Example of Worst Case:

* `root = [1, 1, 1, 1, 1, ...]` (many same values)
* `subRoot = [1, 1, 1, 1]`
  → Every node in `root` could trigger a full `sameSubtree` comparison → **O(n × m)**

---

## 🔹 Space Complexity — **O(h₁ + h₂)**

Where:

* `h₁` = height of `root`
* `h₂` = height of `subRoot`

This comes from **recursion stack usage**:

* `isSubtree` recurses through `root` → uses up to `O(h₁)` stack frames.
* `sameSubtree` may recurse through `subRoot` → up to `O(h₂)`.

So total recursion space is **O(h₁ + h₂)**.

---

### 🔸 Best & Worst Cases

| Case                                | Time     | Space      |
| ----------------------------------- | -------- | ---------- |
| **Best (early match / early fail)** | O(n)     | O(h₁ + h₂) |
| **Worst (every node checked)**      | O(n × m) | O(h₁ + h₂) |

---

### 🔹 Summary

| Complexity | Value      | Explanation                             |
| ---------- | ---------- | --------------------------------------- |
| **Time**   | O(n × m)   | Compare each `root` node with `subRoot` |
| **Space**  | O(h₁ + h₂) | Recursion depth for both trees          |

---

Would you like me to show how to optimize it to **O(n + m)** using **tree serialization + substring search (KMP)** or **hashing**?
That’s the advanced optimized version of this problem.
*/
