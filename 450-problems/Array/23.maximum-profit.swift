//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/maximum-profit4657/1

func buyAndSell(arr: [Int], k: Int) {
    var price = 0

    if k >= arr.count / 2 {
        for i in 1..<arr.count {
            price += max(0, arr[i] - arr[i-1])
        }
      print(price)
        return
    }

    var curr = Array(repeating: 0, count: arr.count)
    var prev = Array(repeating: 0, count: arr.count)

    for i in 1...k {
        var maxDiff = -arr[0]
        for z in 1..<arr.count {
            curr[z] = max(curr[z-1], arr[z] + maxDiff)
            maxDiff = max(maxDiff, prev[z-1] - arr[z])
        }
        prev = curr
    }

    print(prev.last!)
}

buyAndSell(arr:  [90, 80, 70, 60, 50], k: 1)
