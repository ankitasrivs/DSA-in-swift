//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/-rearrange-array-alternately-1587115620/1

func rearrangeArray(arr1: inout [Int])   {
var minIndex = 0
var maxIndex = arr1.count - 1

let maxElement = arr1[maxIndex] + 1

    for i in 0..<arr1.count {
        if i % 2 == 0 {
            print("first arr[i]", arr1[i])
            arr1[i] += (arr1[maxIndex] % maxElement) * maxElement
            print("now arr[i]", arr1[i])
            maxIndex -= 1
        } else {
            print("first min arr[i]", arr1[i])
            arr1[i] += (arr1[minIndex] % maxElement) * maxElement
            print("now min arr[i]", arr1[i])
            minIndex += 1
        }


    }
    for i in 0..<arr1.count {
        arr1[i] /= maxElement
    }
    print(arr1)
}



var a = [1, 2, 3, 4, 5, 6]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(rearrangeArray(arr1: &a))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

