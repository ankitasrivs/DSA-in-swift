

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/count-pairs-with-given-sum5022/1

func countPairs(a1:  [Int])   {
var countSet = Set<Int>()
    var result = Set<[Int]>()
    for i in a1 {
        if countSet.contains(-i) {
            let pair = [min(i, -i), max(i, -i)]
            result.insert(pair)
        }
        countSet.insert(i)
    }

    print(result.sorted {$0[0] < $1[0]})
}



var a =  [6, 1, 8, 0, 4, -9, -1, -10, -6, -5]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]
print(countPairs(a1: a))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

