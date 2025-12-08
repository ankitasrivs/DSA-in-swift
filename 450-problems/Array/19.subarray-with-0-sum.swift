
//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/subarray-with-0-sum-1587115621/1

func subArraywith0(arr1:  [Int])   {
var setCount = Set<Int>()
var sum = 0
    for i in arr1 {
        sum += i
        if sum == 0 || setCount.contains(sum) {
            print(true)
            return
        }
        setCount.insert(sum)

    }
    print(false)

}



var a = [1, 2, -1]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(subArraywith0(arr1: a))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

