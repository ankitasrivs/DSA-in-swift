
// https://leetcode.com/problems/rotate-image/

/*
Great question 👍 Let’s carefully walk through how your code works for rotating a **matrix by 90° clockwise**.

---

### 🔹 Problem:

Rotate a given **N × N** matrix (2D array) **in place** by 90° clockwise.

---

### 🔹 Steps in Your Code

```swift
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        for i in 0..<matrix.count {
            for j in i..<matrix.count {
                let mat = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = mat
            }

            for n in 0..<matrix.count/2 {
                let temp = matrix[i][n]
                matrix[i][n] = matrix[i][matrix.count - n - 1]
                matrix[i][matrix.count - n - 1] = temp
            }
        }
    }
}
```

---

### Step 1: **Transpose the matrix**

* Loop: `for i in 0..<matrix.count { for j in i..<matrix.count { … } }`
* Operation: swap `matrix[i][j]` with `matrix[j][i]`.

👉 This converts rows into columns.

**Example:**
Input matrix

```
1 2 3
4 5 6
7 8 9
```

After transpose:

```
1 4 7
2 5 8
3 6 9
```

---

### Step 2: **Reverse each row**

* Loop: `for n in 0..<matrix.count/2 { … }`
* Swap left and right elements of each row.

👉 This mirrors each row horizontally.

Continuing from the transposed matrix:

```
1 4 7
2 5 8
3 6 9
```

Reverse each row:

```
7 4 1
8 5 2
9 6 3
```

✅ Final result → rotated 90° clockwise.

---

### 🔹 Why does this work?

* **Transpose** = flip across the main diagonal.
* **Row reverse** = flip horizontally.
* Combined effect = rotate 90° clockwise.

---

### 🔹 Walkthrough with a small matrix `2×2`

Input:

```
1 2
3 4
```

Transpose:

```
1 3
2 4
```

Reverse each row:

```
3 1
4 2
```

Correct 90° rotation ✅

*/


class Solution {
    func rotate(_ matrix: inout [[Int]]) {
      for i in 0..<matrix.count {
        for j in i..<matrix.count {
            let mat = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = mat
        }

          for n in 0..<matrix.count/2 {
          let temp = matrix[i][n]
          matrix[i][n] = matrix[i][matrix.count - n - 1]
           matrix[i][matrix.count - n - 1] = temp
          }
      }
    }
}

/*
Time: O(n²)

Space: O(1)
*/
