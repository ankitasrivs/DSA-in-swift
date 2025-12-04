

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/kadanes-algorithm-1587115620/1

func kadaneArr(arr:   [Int]) {
    var currentSum = arr[0]
       var maxSum = arr[0]

       for i in 1..<arr.count {
           currentSum = max(arr[i], currentSum + arr[i])
           maxSum = max(maxSum, currentSum)
       }
    print(maxSum)
}

var arr =  [-2, -4]
kadaneArr(arr: arr)
print(arr)
// Time: O(n)
//Space: O(n)
