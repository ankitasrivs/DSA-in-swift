// https://www.geeksforgeeks.org/dsa/rearrange-array-alternating-positive-negative-items-o1-extra-space/

func rearangeBySign(arr: [Int]) {
    var pos = [Int]()
    var neg = [Int]()
    for i in arr {
        if i < 0 {
            neg.append(i)
        } else {
            pos.append(i)
        }
    }
    print(pos + neg)

}
var arr = [1, 2, 3, -4, -1, 4]
rearangeBySign(arr: arr)


/*
 Time: O(n)
 Space: O(n)
 */
