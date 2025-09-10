// https://leetcode.com/problems/spiral-matrix/description/


class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var res = [Int]()
        var cStart = 0
        var rEnd = matrix.count - 1
        var rStart = 0
        var cEnd = matrix[0].count - 1

        while rStart <= rEnd && cStart <= cEnd {
 
        // Start right 
            for i in stride(from: cStart, through: cEnd, by: 1) {
                res.append(matrix[rStart][i])
            }
            rStart += 1

            
                 for i in stride(from: rStart, through: rEnd, by: 1) {
                res.append(matrix[i][cEnd])
            }
            cEnd -= 1  
       

            if rStart <= rEnd {
                 for i in stride(from: cEnd, through: cStart, by: -1) {
                res.append(matrix[rEnd][i])
            }
            rEnd -= 1  
            }

                 if cStart <= cEnd {
                 for i in stride(from: rEnd, through: rStart, by: -1) {
                res.append(matrix[i][cStart])
            }
            cStart += 1  
            }
            
        }
        return res
    }
}

/*
Time: O(m * n)

Space: O(1) auxiliary, O(m * n) total (including output).
*/

/*
Great, let’s do a **full walkthrough of your code with an example** so you see how the indices change step by step.

---

### Example Input

```swift
let matrix = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9,10,11,12]
]
```

This is a **3 x 4** matrix.

---

### Initial boundaries

* `rStart = 0` (top row)
* `rEnd = 2` (bottom row)
* `cStart = 0` (left col)
* `cEnd = 3` (right col)

Result `res = []`

---

### Iteration 1

**Step 1: Go Right** (row `rStart = 0`, columns `0...3`)
→ add `[1, 2, 3, 4]`
`res = [1,2,3,4]`
`rStart = 1`

**Step 2: Go Down** (column `cEnd = 3`, rows `1...2`)
→ add `[8, 12]`
`res = [1,2,3,4,8,12]`
`cEnd = 2`

**Step 3: Go Left** (row `rEnd = 2`, columns `2...0`)
→ add `[11,10,9]`
`res = [1,2,3,4,8,12,11,10,9]`
`rEnd = 1`

**Step 4: Go Up** (column `cStart = 0`, rows `1...1`)
→ add `[5]`
`res = [1,2,3,4,8,12,11,10,9,5]`
`cStart = 1`

---

### Iteration 2

**New boundaries:**

* `rStart = 1`
* `rEnd = 1`
* `cStart = 1`
* `cEnd = 2`

**Step 1: Go Right** (row `1`, columns `1...2`)
→ add `[6, 7]`
`res = [1,2,3,4,8,12,11,10,9,5,6,7]`
`rStart = 2`

**Step 2: Go Down** → skipped (because `rStart > rEnd`)
**Step 3: Go Left** → skipped (same reason)
**Step 4: Go Up** → skipped

---

### Final Result

```
[1,2,3,4,8,12,11,10,9,5,6,7]
```

That’s the **spiral order** traversal.

---

✅ So, your code works layer by layer:

1. Top row → right
2. Right column → down
3. Bottom row → left
4. Left column → up
   Then shrinks the box and repeats.
*/
