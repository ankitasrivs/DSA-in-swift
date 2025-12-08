
//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/maximum-product-subarray3604/1

func maximumSubarray(arr1: [Int])   {
 var max1 = arr1[0]
    var min1 = arr1[0]
    var res = 1

    for i in 1..<arr1.count {
        if arr1[i] < 0 {
            swap(&max1, &min1)
        }
        max1 = max(max1 * arr1[i], arr1[i])
        min1 = min(min1 * arr1[i], arr1[i])
        res = max(res, max1)


    }
    print(res)

}



var a = [1, 2, -1]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(maximumSubarray(arr1: [-1, -3, -10, 0, 6]))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

