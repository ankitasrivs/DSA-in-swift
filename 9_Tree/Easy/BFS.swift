    func bfs<T>(_ root: Tree<T>?) -> [T] {
        guard let root else { return [] }
        var queue: [Tree<T>] = [root]
        var res: [T] = []

        while !queue.isEmpty {
            let node = queue.removeFirst()
            res.append(node.value!)
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        return res
    }

    
    func levelOrderRec<T>(_ root: Tree<T>?, _ level: Int, _ res: inout [[T]]) {
        guard let root else { return }

        // Add new level if needed
        if res.count <= level {
            res.append([])
        }

        // Add current node's value
        res[level].append(root.value)

        // Recurse left and right
        levelOrderRec(root.left, level + 1, &res)
        levelOrderRec(root.right, level + 1, &res)
    }
