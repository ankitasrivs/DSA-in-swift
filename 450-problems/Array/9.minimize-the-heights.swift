

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/minimize-the-heights3351/1

func minimuseheight(arr: inout [Int], k: Int) {
    arr = arr.sorted()
    var minHeight = arr[0] + k
    var maxHeight = arr[arr.count - 1] - k
    var ans = maxHeight - minHeight

    for i in 1..<arr.count {
        minHeight = min(arr[i] + k, minHeight)
        maxHeight = max(arr[i-1] - k, maxHeight)

        if arr[i] - k < 0 {
            continue
        }
        ans = min(ans, maxHeight - minHeight)
    }
    print(ans)

}

var arr =  [1, 5, 8, 10]
minimuseheight(arr: &arr, k: 2)
print(arr)
// Time: O(nlogn)
//Space: O(1)
