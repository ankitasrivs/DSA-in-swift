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
Let’s break it down clearly — because **circular** and **doubly** linked lists are often confused.

---

## **1. Doubly Linked List (DLL)**

A **Doubly Linked List** is a type of linked list where **each node has two pointers**:

* **`prev`** → points to the previous node
* **`next`** → points to the next node

The first node’s `prev` is **NULL**, and the last node’s `next` is **NULL**.

**Diagram:**

```
NULL ← [Prev|Data|Next] ↔ [Prev|Data|Next] ↔ [Prev|Data|NULL]
```

**Key Points:**

* Can traverse **both forward and backward**.
* Uses **more memory** (extra `prev` pointer).
* Deletion is easier because you have direct access to the previous node.

**Example use cases:**

* Browser history navigation (forward/backward).
* Undo/redo in editors.

---

## **2. Circular Linked List (CLL)**

A **Circular Linked List** is a linked list where the **last node points back to the first node** instead of `NULL`.
It can be:

* **Singly Circular Linked List** → each node has only `next`, but last node points to head.
* **Doubly Circular Linked List** → each node has both `prev` and `next`, and links form a circle in both directions.

**Singly Circular Diagram:**

```
[Data|Next] → [Data|Next] → [Data|Next]
      ↑_______________________________|
```

**Doubly Circular Diagram:**

```
↔ [Prev|Data|Next] ↔ [Prev|Data|Next] ↔
(Last connects to first, first connects back to last)
```

**Key Points:**

* No `NULL` — traversal can loop infinitely.
* Useful for problems where you need **continuous cycling** through data.
* Needs careful traversal logic to avoid infinite loops.

**Example use cases:**

* CPU round-robin scheduling.
* Multiplayer games (turn rotation).

---

💡 **Main difference:**

* **Doubly** = has both `prev` and `next` pointers (direction flexibility).
* **Circular** = tail connects back to head (endless loop).
* You can **combine them** → **Doubly Circular Linked List**.



| Feature                       | **Singly Linked List** | **Doubly Linked List** | **Circular Linked List**             |
| ----------------------------- | ---------------------- | ---------------------- | ------------------------------------ |
| **Pointers per Node**         | 1 (`next`)             | 2 (`prev`, `next`)     | 1 or 2 (depends on type)             |
| **Memory Usage**              | Low                    | Higher (extra pointer) | Low/High depending on type           |
| **Traversal Direction**       | Forward only           | Forward & backward     | Forward (or both if doubly circular) |
| **Last Node Points To**       | NULL                   | NULL                   | Head node (first node)               |
| **Insert/Delete Efficiency**  | O(1) if position known | O(1) if position known | O(1) if position known               |
| **Use Cases**                 | Simple lists, queues   | Undo/redo, history nav | Round-robin, loops                   |
| **Implementation Complexity** | Simple                 | Moderate               | Moderate/High                        |



