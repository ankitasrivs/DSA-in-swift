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

