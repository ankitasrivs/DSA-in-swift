

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/longest-consecutive-subsequence2449/1

func longestSubsequence(arr1: [Int])   {
    var set1 = Set<Int>()
    var largest = 0

    for i in arr1 {
        set1.insert(i)
    }

    for i in arr1 {
        if !set1.contains(i-1) {
            var count = 1
            var i1 = i
            while set1.contains(i1 + 1) {
                i1 += 1
                count += 1
            }
            largest = max(largest, count)
        }
    }

    print(largest)
}



var a = [1, 2, -1]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(longestSubsequence(arr1:  [2, 6, 1, 9, 4, 5, 3]))
