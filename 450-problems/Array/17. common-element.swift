
//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/common-elements1132/1

func commonSorted(arr1:  [Int], arr2: [Int], arr3: [Int])   {
var result = [Int]()
var i = 0
var j = 0
var k = 0

    while i < arr1.count && j < arr2.count && k < arr3.count {
        if i > 0 && arr1[i] == arr1[i-1] {
            i += 1
            continue
        }

        if arr1[i] == arr2[j] && arr2[j] == arr3[k] {
            result.append(arr1[i])
            i += 1
            j += 1
            k += 1
        } else if arr1[i] < arr2[j] {
            i += 1
        } else if arr2[j] < arr3[k] {
            j += 1
        } else {
            k += 1
        }
    }
    print(result.count == 0 ? [-1] : result)
}



var a =  [6, 1, 8, 0, 4, -9, -1, -10, -6, -5]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(commonSorted(arr1: [1, 1, 1, 2, 2, 2], arr2:  [1, 1, 2, 2, 2], arr3: [1, 1, 1, 1, 2, 2, 2, 2]))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

