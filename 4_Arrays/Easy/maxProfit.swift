import UIKit
// https://www.geeksforgeeks.org/dsa/best-time-to-buy-and-sell-stock/

func maxProfit(arr: [Int]) {

    var min1 = arr[0]
    var res = 0
    for i in 1..<arr.count {
        min1 = min(arr[i], min1)
        res = max(res, arr[i] - min1)
    }

    print(res)

}

maxProfit(arr: [7, 10, 1, 3, 6, 9, 2])


/*
 Time: O(n)
 Space: O(1)
 */
