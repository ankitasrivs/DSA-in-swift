# 📚 Linked List — Theory, Types, and Code

## 1. What is a Linked List?
A **Linked List** is a linear data structure where elements (**nodes**) are stored in separate memory locations and connected using **pointers** (or references).

### Key Differences from Arrays
- Memory is **not contiguous**.
- Size is **dynamic** (can easily grow or shrink).
- Access is **sequential** — must traverse from the head.

---

## 2. Basic Node Structure
Each node contains:
1. **Data** — value stored.
2. **Pointer(s)** — reference(s) to next/previous nodes.

Example in C:
```c
struct Node {
    int data;
    struct Node* next; // points to the next node
};
```
## 3. Single vs Double vs Circular

| Feature                       | **Singly Linked List** | **Doubly Linked List** | **Circular Linked List**             |
| ----------------------------- | ---------------------- | ---------------------- | ------------------------------------ |
| **Pointers per Node**         | 1 (`next`)             | 2 (`prev`, `next`)     | 1 or 2 (depends on type)             |
| **Memory Usage**              | Low                    | Higher (extra pointer) | Low/High depending on type           |
| **Traversal Direction**       | Forward only           | Forward & backward     | Forward (or both if doubly circular) |
| **Last Node Points To**       | NULL                   | NULL                   | Head node (first node)               |
| **Insert/Delete Efficiency**  | O(1) if position known | O(1) if position known | O(1) if position known               |
| **Use Cases**                 | Simple lists, queues   | Undo/redo, history nav | Round-robin, loops                   |
| **Implementation Complexity** | Simple                 | Moderate               | Moderate/High                        |
