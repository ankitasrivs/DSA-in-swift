// https://www.geeksforgeeks.org/dsa/remove-duplicates-sorted-array/

func removeSuplicates(arr: inout [Int]) {

    for i in (1..<arr.count).reversed() {
        if arr[i] == arr[i-1] {
            arr.remove(at: i)
        }
    }
    print(arr)

}
var arr = [2, 2, 2, 2, 2]
removeSuplicates(arr: &arr)

/*
Time: O(n)
Space: O(1)
*/
