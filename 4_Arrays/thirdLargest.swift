
// https://www.geeksforgeeks.org/dsa/third-largest-element-array-distinct-elements/
func thirdLargest(arr: [Int]) {
    var firstLargest = Int.min
    var secondLargest = Int.min
    var thirdLargest = Int.min

    for num in arr {
        if num > firstLargest {
            thirdLargest = secondLargest
            secondLargest = firstLargest
            firstLargest = num
        } else if num > secondLargest && num != firstLargest {
            thirdLargest = secondLargest
            secondLargest = num
        } else if num > thirdLargest && num != secondLargest && num != firstLargest {
            thirdLargest = num
        }
    }

    if thirdLargest == Int.min {
        print("Less than 3 distinct elements")
    } else {
        print(thirdLargest)
    }
}

/*
✅ Time and Space Complexity
Time Complexity:
Single pass through array: O(n)

Constant-time operations inside loop

➡️ O(n)

Space Complexity:
Only uses three Int variables

➡️ O(1)


*/
