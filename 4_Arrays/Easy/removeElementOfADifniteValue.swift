// https://www.geeksforgeeks.org/dsa/remove-element/

func removeOccurrences(arr: [Int], k: Int) {

    var k = 0
    for i in arr where i != k {
        k += 1
    }
    print(k)

}

removeOccurrences(arr: [3,22,2,3], k: 2)


/*
 Time: O(n)
 Space: O(1)
 */
