
//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/inversion-of-array-1587115620/1

func countInversion(a: inout [Int]) -> Int  {
    return mergeSort(a: &a, left: 0, right: a.count - 1)
}

func mergeSort(a: inout [Int], left: Int, right: Int) -> Int {
    if left >= right {
        return 0
    }
    let mid = (left + right)/2
    var count = 0
    count += mergeSort(a: &a, left: left, right: mid)
    count += mergeSort(a: &a, left: mid+1, right: right)
    count += merge(a: &a, left: left, right: right, mid: mid)
    return count
}

func merge(a: inout [Int], left: Int, right: Int, mid: Int) -> Int {
    var count = 0
    var i = left
    var j = mid + 1
    var temp = [Int]()

    while i <= mid && j <= right {
        if a[i] <= a[j] {
            temp.append(a[i])
            i += 1
        } else {
            count += (mid - i + 1)
            temp.append(a[j])
             j += 1
        }
    }

    while i <= mid  {

            temp.append(a[i])
            i += 1
    }

    while j <= right  {

            temp.append(a[j])
            j += 1
    }

    for k in 0..<temp.count {
        a[left+k] = temp[k]
    }
    return count
}


var a =  [2, 4, 1, 3, 5]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]
print(countInversion(a: &a))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(n)

