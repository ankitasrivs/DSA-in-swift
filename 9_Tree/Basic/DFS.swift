//
//  main.swift
//  Tree
//
//  Created by Ankita Srivastava on 24/08/25.
//

import Foundation

class Tree<T: BinaryInteger> {

    var value: T?
    var left: Tree?
    var right: Tree?

    init(value: T?, left: Tree? = nil, right: Tree? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

class TreeImplementation<T: BinaryInteger> {


    // Inorder
    /*
     Inorder Traversal (DFS)

    **Rule:**
    1. Visit the **Left Subtree**
    2. Process the **Root Node**
    3. Visit the **Right Subtree**

        1
       / \
      2   3
     / \
    4   5

     4 → 2 → 5 → 1 → 3
     */

    
    func inorderRecursive(node: Tree<T>?) {
        guard let node else {
            return
        }

        inorderRecursive(node: node.left)
        print(node.value)
        inorderRecursive(node: node.right)
    }


    /*


     ### 🌳 Example Tree



     ```
            1
             \
              2
             /
            3
     ```

     Inorder should be: `[1, 3, 2]`.

     ---

     ### 📝 Full Code (relevant part)

     ```swift
     else {
         // Find inorder predecessor (rightmost node in left subtree)
         var predecessor = node.left
         while predecessor?.right != nil && predecessor?.right !== node {
             predecessor = predecessor?.right
         }

         if predecessor?.right == nil {
             // Make a temporary thread to the current node
             predecessor?.right = node
             current = node.left
         } else {
             // Thread already exists → break it
             predecessor?.right = nil
             result.append(node.val)
             current = node.right
         }
     }
     ```

     ---

     ### 🚶 Walkthrough

     #### Step 1: Start at root `1`

     * `node = 1`
     * `node.left == nil`
     * So we don’t enter the `else` block.
     * Directly visit `1` → result = `[1]`.
     * Move to `node.right = 2`.

     ---

     #### Step 2: Now at `node = 2`

     * `node.left != nil` (`3` exists) → enter the `else` block.

     ```swift
     var predecessor = node.left  // predecessor = 3
     ```

     ---

     #### Step 3: Find predecessor of `2`

     ```swift
     while predecessor?.right != nil && predecessor?.right !== node {
         predecessor = predecessor?.right
     }
     ```

     * Currently: `predecessor = 3`.
     * `predecessor?.right == nil` (since `3.right = nil`).
     * Loop ends immediately.
     * So predecessor of `2` is `3`.

     ---

     #### Step 4: Check thread

     ```swift
     if predecessor?.right == nil {
     ```

     * Yes → `3.right == nil`.
     * First time visiting `2`.
     * So we **create a thread**:

     ```swift
     predecessor?.right = node   // 3.right = 2
     current = node.left         // move to left child (3)
     ```

     Now the tree temporarily looks like:

     ```
            1
             \
              2
             /
            3
             \
              2  (thread back to 2)
     ```

     ---

     #### Step 5: Now at `node = 3`

     * `3.left == nil` → no left child.
     * So we visit `3` → result = `[1, 3]`.
     * Then move to `3.right`.
     * BUT recall: `3.right = 2` (thread).
     * So now `node = 2` again.

     ---

     #### Step 6: Back at `node = 2`

     * Enter `else` again (since left child exists).
     * Find predecessor again:

     ```swift
     var predecessor = node.left // predecessor = 3
     while predecessor?.right != nil && predecessor?.right !== node {
         predecessor = predecessor?.right
     }
     ```

     Now check loop condition:

     * `predecessor?.right != nil` → true (`3.right = 2`)
     * `predecessor?.right !== node` → false (`3.right` **is** exactly `node` = `2`).

     💡 This is the **critical check** → it detects the thread!
     So loop exits with `predecessor = 3`.

     ---

     #### Step 7: Second visit handling

     ```swift
     if predecessor?.right == nil {
         ...
     } else {
         predecessor?.right = nil       // remove the thread
         result.append(node.val)        // visit 2
         current = node.right           // move right
     }
     ```

     * Remove the thread → `3.right = nil`.
     * Visit `2` → result = `[1, 3, 2]`.
     * Move to `2.right = nil`.
     * Done ✅.

     ---

     ### 🔑 Key Insight

     The condition:

     ```swift
     while predecessor?.right != nil && predecessor?.right !== node
     ```

     * On **first encounter** of `2`:
       `3.right == nil` → stop and create thread.

     * On **second encounter** of `2`:
       `3.right == 2` (thread exists).
       `predecessor?.right !== node` fails.
       → Means we’re back via the thread → time to break the thread and visit `2`.

     ---

     ### ✅ Final Result

     Traversal order: `[1, 3, 2]`
     Tree is restored to original shape.

     ---

     Would you like me to also do the **same line-by-line walkthrough for a bigger tree with both left and right children** (like a complete binary tree), so you can see multiple threads being created and removed in sequence?

     */

    func inOrderMorris(node: Tree<T>?) -> [T]{
        guard let node else {
            return []
        }
        var res = [T]()
        var curr:Tree<T>? = node
        while curr != nil {
            if curr?.left == nil {
                // If ;eft is nil move to right after adding root in array

                res.append(curr!.value!)
                curr = curr?.right
            } else {
                // Goal is to find right predecessor of extreme left as inorder means leftsubtree + root + right subtreaa
                var prev = curr?.left
                while prev?.right != nil && prev?.right !== curr {
                    prev = prev?.right
                }
                // We will link predessor right to current node so that we can move back
                // if No link is present
                if prev?.right == nil {
                    prev?.right = curr
                    curr = curr?.left
                } else {
                    // break link as its already there
                    prev?.right = nil
                    res.append(curr!.value!)
                    curr = curr?.right
                }
            }
        }
        return res
    }


    func inOrderIterative(node: Tree<T>?) -> [T]{
        guard let node else {
            return []
        }
        var result: [T] = []
        var stack: [Tree<T>?] = []
        var current: Tree<T>? = node
        while current != nil || !stack.isEmpty {

            while let newNode = current {
                stack.append(newNode)
                current = current?.left
            }
            let lastNode = stack.removeLast()
            result.append(lastNode!.value!)
            current = lastNode?.right
        }
        return result
    }



/*

 Preorder traversal is a tree traversal method that follows the Root-Left-Right order:

 The root node of the subtree is visited first.
 Next, the left subtree is recursively traversed.
 Finally, the right subtree is recursively traversed.

    1
   / \
  2   3
 / \
4   5

 [1, 2, 4, 5, 3]
 */

    func preOrderRecusrsive(node: Tree<T>?) {
        guard let node else {
            return
        }
        print(node.value)
        preOrderRecusrsive(node: node.left)
        preOrderRecusrsive(node: node.right)
    }


    /*
     Postorder traversal is a tree traversal method that follows the Left-Right-Root order:

     The left subtree is visited first.
     The right subtree is visited next.
     The root node is processed last.

        1
       / \
      2   3
     / \
    4   5

     4 5 2 6 3 1
     */

    func postOrderRecusrsive(node: Tree<T>?) {
        guard let node else {
            return
        }
        postOrderRecusrsive(node: node.left)
        postOrderRecusrsive(node: node.right)
        print(node.value)
    }
}


let root = Tree<Int>.init(value: 1)
root.left = Tree<Int>.init(value: 2)
root.right = Tree<Int>.init(value: 3)
root.left?.left = Tree<Int>.init(value: 4)
root.left?.right = Tree<Int>.init(value: 5)

let tree = TreeImplementation<Int>()
tree.inorderRecursive(node: root)
print("hello")
print(tree.inOrderMorris(node: root))
print(tree.inOrderIterative(node: root))

