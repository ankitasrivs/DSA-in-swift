//https://www.geeksforgeeks.org/dsa/leaders-in-an-array/

func leaderArray(arr: [Int]) {
    var res = [arr.last!]
    var max1 = arr.last!
    for i in (0..<arr.count - 1 ).reversed() {
        if arr[i] >= max1 {
            max1 = max(max1, arr[i])
            res.append(arr[i])
        }
        print(arr[i], res)
    }
    print(res)
}
var arr = [16, 17, 4, 3, 5, 2]
leaderArray(arr: arr)


/*
 Time: O(n)
 Space: O(n)
 */
