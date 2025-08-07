/*
https://www.geeksforgeeks.org/dsa/find-maximum-product-of-a-triplet-in-array/
*/

// Less optimised
func maximumProduct(arr: inout [Int]) {
    guard arr.count > 2 else {
        return
    }
    // First sort
    arr = arr.sorted()


    /*
     Sort the array using some efficient in-place sorting algorithm in ascending order.
     In triplets, either there will be 2 negative elements and 1 positive element or all 3 positive elements so that resultant product will be positive.
     Therefore, To maximise the result return the maximum of  product of the last three elements of the array and the product of the first two elements and last element.

     // Why first three so if we have negative and we sort it will be like this -10,-9,-8,0,1,2,3
        so -10 will be largest and we need 2 - and one plus
     */

    let maxPrduct = max(arr[0] * arr[1] * arr[arr.count - 1], arr[arr.count - 1] * arr[arr.count - 2] * arr[arr.count - 3])
    print(maxPrduct)
}

var arr = [-10, -3, 5, 6, -20]

maximumProduct(arr: &arr)

/*
Time Complexity:
Sorting: O(n log n)

Rest: O(1) operations

➡️ Total: O(n log n)

Space Complexity:
You are sorting in-place, but technically sorted() returns a new array in Swift.

➡️ Total: O(n) (since arr.sorted() returns a new array)
*/



// Now more optimised. Since sorting takes time and space we will try without sorting. We need  2 small elements
// in case we have negative and last 3 elements so we will store then in varaibles and do the same operation



func maximumProductOptimised(arr:  [Int]) {
    guard arr.count > 2 else {
        return
    }



    /*
     iterate over array and store first 2 small elements and last 3 larger elements
     Therefore, To maximise the result return the maximum of  product of the last three elements of the array and the product of the first two elements and last element.

     // Why first three so if we have negative and we sort it will be like this -10,-9,-8,0,1,2,3
        so -10 will be largest and we need 2 - and one plus
     */

    var max1 = Int.min
    var max2 = Int.min
    var max3 = Int.min

    var min1 = Int.max
    var min2 = Int.max


    for i in arr {
        if max1 < i {
            max3 = max2
            max2 = max1
            max1 = i
        } else if max2 > i && i != max1 {
            max3 = max2
            max2 = i
        } else if max3 > i && i != max1 && i != max2 {
            max3 = i
        }

        if min1 > i {
            min2 = min1
            min1 = i

        } else if min2 > i && i != min1 {
            min2 = i
        }
    }

    let maxPrduct = max(min1 * min2 * max1, max1 * max2 * max3)
    print(maxPrduct)
}

var arr1 = [-10, -3, 5, 6, -20]

maximumProductOptimised(arr: arr1)

