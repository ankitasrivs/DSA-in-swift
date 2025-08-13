// https://www.geeksforgeeks.org/dsa/find-a-repeating-and-a-missing-number/

/*
Got it — you want **full detailed notes** in simple language, but with **complete code examples** for each DSA bit manipulation trick, including the *turn off rightmost bit* and *n & -n* parts.

Here’s the start of the **bit manipulation section** of the notes in that style:

---

## **Bit Manipulation Tricks — With Detailed Explanation and Code**

---

### **1. Turn Off the Rightmost Set Bit**

**Formula:**

```swift
n & (n - 1)
```

**Why it works:**

* In binary, subtracting `1` from a number flips all bits to the right of the **rightmost set bit** (including that bit).
* AND-ing with the original number sets that bit to `0` while leaving all higher bits unchanged.

**Example:**

```
n = 12  → 1100
n-1     → 1011
n & n-1 → 1000
```

Rightmost set bit is turned off.

**Swift Code:**

```swift
func turnOffRightmostBit(_ n: Int) -> Int {
    return n & (n - 1)
}

print(turnOffRightmostBit(12)) // 8
```

**Use case:**

* Count number of set bits (Brian Kernighan’s Algorithm)
* Remove elements from bitmasks

---

### **2. Extract the Rightmost Set Bit**

**Formula:**

```swift
n & -n
```

**Why it works:**

* `-n` in binary = two’s complement of `n` = `(~n) + 1`
* This leaves only the rightmost set bit as `1`, everything else `0`.

**Example:**

```
n = 12  → 1100
-n      → 0100 (two's complement)
n & -n  → 0100 (rightmost set bit only)
```

**Swift Code:**

```swift
func rightmostSetBit(_ n: Int) -> Int {
    return n & -n
}

print(rightmostSetBit(12)) // 4
```

**Use case:**

* Find a distinguishing bit in XOR problems (like finding missing/repeating numbers)
* Group numbers based on a specific set bit

---

### **3. Check if a Number is a Power of Two**

**Formula:**

```swift
n > 0 && (n & (n - 1)) == 0
```

**Why it works:**

* Powers of two have exactly one `1` in binary.
* `(n & (n - 1))` will be `0` if and only if `n` has only one set bit.

**Example:**

```
8 → 1000
8-1 → 0111
8 & 7 = 0  ✅
```

**Swift Code:**

```swift
func isPowerOfTwo(_ n: Int) -> Bool {
    return n > 0 && (n & (n - 1)) == 0
}

print(isPowerOfTwo(8)) // true
print(isPowerOfTwo(10)) // false
```

---

### **4. Swap Two Numbers Without a Temp Variable (XOR Swap)**

```swift
a = a ^ b
b = a ^ b
a = a ^ b
```

**Why it works:**

* XOR-ing twice with the same number returns the original number.

**Swift Code:**

```swift
var a = 5, b = 9
a ^= b
b ^= a
a ^= b
print(a, b) // 9 5
```

---

If you want, I can prepare **the full DSA Bit Manipulation section** in this format covering:

* Counting set bits
* Odd/even check
* Clearing specific bits
* Setting specific bits
* Toggling bits
* Checking kth bit
* XOR sum tricks
* Using masks for subsets

Do you want me to prepare the **full expanded notes** like this for *all* bit tricks in DSA? That would make it a complete reference.


*/
func findMissingAndRepeating(_ arr: [Int]) -> (repeating: Int, missing: Int) {
    var xorAll = 0
    
    // ----------------------------------------------------------
    // Step 1: XOR all elements of the array
    // Why?  
    //   - Repeating number (R) appears twice in the array.
    //   - Missing number (M) is absent from the array.
    //   - XOR has the property: a ^ a = 0, and a ^ 0 = a.
    //   - If we XOR all array elements and all numbers from 1..N,
    //     all numbers except M and R will cancel out.
    // ----------------------------------------------------------
    for num in arr {
        xorAll ^= num
    }
    
    // Step 2: XOR all numbers from 1 to N
    // After this, xorAll = M ^ R
    for i in 1...arr.count {
        xorAll ^= i
    }
    
    // ----------------------------------------------------------
    // Step 3: Find the rightmost set bit in xorAll (M ^ R)
    // Why?  
    //   - M and R are different numbers, so M ^ R has at least one bit set.
    //   - The rightmost set bit tells us the lowest position where they differ.
    //   - Using: number = xorAll & ~(xorAll - 1)
    //     This isolates the rightmost set bit (mask).
    // ----------------------------------------------------------
    let mask = xorAll & ~(xorAll - 1)
    
    // ----------------------------------------------------------
    // Step 4: Use the mask to divide numbers into two groups:
    //   Group A: numbers with that bit = 1
    //   Group B: numbers with that bit = 0
    // Why?  
    //   - Since M and R differ at this bit, one will go to Group A and the other to Group B.
    //   - XORing inside each group separately will cancel out all paired numbers,
    //     leaving only one number in each group (either M or R).
    // ----------------------------------------------------------
    var x = 0 // Will hold one of M or R
    var y = 0 // Will hold the other
    
    // Step 4a: Process array elements
    for num in arr {
        if (mask & num) != 0 {  // If bit is set
            x ^= num
        } else {
            y ^= num
        }
    }
    
    // Step 5: Repeat for numbers 1..N
    // Why repeat?
    //   - First pass only grouped *actual* array contents.
    //   - But the correct full set is 1..N.
    //   - We must also XOR these full set numbers in the same grouped way,
    //     so that any common elements in each group cancel out.
    for i in 1...arr.count {
        if (mask & i) != 0 {
            x ^= i
        } else {
            y ^= i
        }
    }
    
    // ----------------------------------------------------------
    // Step 6: Determine which is repeating and which is missing
    // How?  
    //   - Check the original array: the number that appears twice is repeating.
    // ----------------------------------------------------------
    var repeating = 0
    var missing = 0
    
    if arr.contains(x) {
        repeating = x
        missing = y
    } else {
        repeating = y
        missing = x
    }
    
    return (repeating, missing)
}

// Example usage:
let arr = [4, 3, 6, 2, 1, 1]
let result = findMissingAndRepeating(arr)
print("Repeating: \(result.repeating), Missing: \(result.missing)")



/*
Time: O(n)
Space: O(1)

*/
