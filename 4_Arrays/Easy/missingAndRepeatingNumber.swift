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
