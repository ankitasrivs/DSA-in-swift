// https://leetcode.com/problems/implement-stack-using-queues/

class MyStack {
    // Using one queue (implemented as an array)
    private var queue = [Int]()
    
    init() {}
    
    // Push element x onto stack.
    func push(_ x: Int) {
        // 1️⃣ Add new element at the end (enqueue)
        queue.append(x)
        
        // 2️⃣ Rotate existing elements to bring new one to the front
        // This ensures stack order (LIFO)
        for _ in 0..<(queue.count - 1) {
            queue.append(queue.removeFirst())
        }
    }
    
    // Removes the element on top of the stack and returns it.
    func pop() -> Int {
        // The "front" of the queue represents the "top" of the stack
        return queue.removeFirst()
    }
    
    // Get the top element.
    func top() -> Int {
        return queue.first!
    }
    
    // Returns true if the stack is empty.
    func empty() -> Bool {
        return queue.isEmpty
    }
}
