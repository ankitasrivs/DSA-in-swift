
// https://www.geeksforgeeks.org/problems/union-of-two-arrays3538/1
func union(_ a: [Int], _ b: [Int]) -> [Int] {
    var result: Set<Int> = []

    for i in a { result.insert(i) }
    for i in b { result.insert(i) }

    return Array(result)
}

var arr =  [1, -1, 3, 2, -7, -5, 11, 6]

let output = union([1, 2, 3, 2, 1], [3, 2, 2, 3, 3, 2])
print("Union:", output)           // unsorted, like GFG expects
print("Sorted:", output.sorted()) // local readability
print(arr)
// Time: O(n)
//Space: O(n)
