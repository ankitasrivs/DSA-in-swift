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
tree.postOrderRecusrsive(node: root)


