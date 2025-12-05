//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/next-permutation5226/1

func nextPermutation(a: inout [Int])  {
    var i = a.count - 2

    while i >= 0 && a[i] >= a[i+1] {
     i -= 1
    }

    var j = a.count - 1

    if i >= 0 {


        while a[j] <= a[i] {
            j -= 1
        }
        a.swapAt(i, j)
    }

    var left = i + 1
    var right = a.count - 1

    while left < right {
        a.swapAt(left, right)
        right -= 1
        left += 1
    }
    print(a)

}
var a =  [2, 4, 1, 7, 5, 0]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]
nextPermutation(a: &a)
print(a)
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(n)

