// https://www.geeksforgeeks.org/dsa/find-second-largest-element-array/


func secondLargest(arr: [Int]) {
    guard arr.count >= 2 else {
        print("Array must have at least 2 elements")
        return
    }

    var firstLargest = Int.min
    var secondLargest = Int.min

    for num in arr {
        if num > firstLargest {
            secondLargest = firstLargest
            firstLargest = num
        } else if num > secondLargest && num != firstLargest {
            secondLargest = num
        }
    }

    if secondLargest == Int.min {
        print("No second largest found")
    } else {
        print(secondLargest)
    }
}


/*
 Time Complexity
The loop: for i in 1..<arr.count iterates through the array once (starting from index 1).

Each operation inside the loop (comparison and assignment) is constant time: O(1).

🔹 Total Time Complexity: O(n)
Where n is the number of elements in the array.

✅ Space Complexity
Only a fixed number of variables are used: firstLargest and secondLargest, both of which are Ints.

No additional data structures are used that depend on input size.

🔹 Total Space Complexity: O(1)
| Metric          | Value                                           |
| --------------- | ----------------------------------------------- |
| **Time**        | O(n)                                            |
| **Space**       | O(1)                                            |


*/
