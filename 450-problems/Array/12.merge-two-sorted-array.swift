
//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/merge-two-sorted-arrays-1587115620/1

func merge(a: inout [Int], b: inout [Int])  {
    var i = a.count - 1
    var j = b.count - 1

    while i >= 0 && j >= 0 {
        if a[i] >= b[j] {
            let temp = a[i]
            a[i] = b[j]
            b[j] = temp
            i -= 1
            j -= 1
        } else {
            j -= 1
        }
    }
    a = a.sorted()
    b = b.sorted()
    print(a,b)

}
var a = [2, 4, 7, 10]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(n)


func mergedArr1(a: inout [Int], b: inout [Int])  {

    func calculateGap(val: Int) -> Int {
        if val <= 1 {
            return 0
        }
        return (val / 2) + (val % 2)
    }

    var aLen = a.count
    var bLen = b.count

    var gap = calculateGap(val: aLen + bLen)

    while gap  > 0 {
        var ptr_1 = 0
        var ptr_2 = gap

        while ptr_2 < (aLen + bLen) {
            if ptr_2 < aLen && a[ptr_1] > a[ptr_2] {
                a.swapAt(ptr_1, ptr_2)
            } else if ptr_2 >= aLen && ptr_1 < aLen && a[ptr_1] > b[ptr_2 - aLen] {
                let temp = a[ptr_1]
                a[ptr_1] = b[ptr_2 - aLen]
                b[ptr_2 - aLen] = temp
            } else if ptr_1 >= aLen && ptr_2 >= aLen && a[ptr_1 - aLen] > b[ptr_2 - aLen] {
                b.swapAt(ptr_1, ptr_2)
            }
            ptr_1 += 1
            ptr_2 += 1

        }
        gap = calculateGap(val: gap)
    }

    print(a, b)

}

var a1 = [2, 4, 7, 10]
var b1 = [2, 3]
mergedArr1(a: &a1, b: &b1)
