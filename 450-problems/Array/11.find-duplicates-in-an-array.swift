//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-duplicates-in-an-array/1

func arrayDuplicate(arr: inout [Int]) -> [Int] {
    var res = [Int]()
    for i in 0..<arr.count {
        let index = abs(arr[i]) - 1
        if arr[index] < 0 {
            res.append(index+1)
        } else {
            arr[index] = -arr[index]
        }
    }
    return res
}

var arr =   [2, 3, 1, 2, 3]
print(arrayDuplicate(arr: &arr))
//print(arr)
// Time: O(n)
//Space: O(n)
