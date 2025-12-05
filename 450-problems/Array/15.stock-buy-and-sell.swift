//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/stock-buy-and-sell-1587115621/1

func stockBuy(a1:  [Int])   {
   var profit = 0
    var i = 0
    var buy = 0
    var sell = 0

    while i < a1.count - 1 {
        while i < a1.count - 1 && a1[i+1] <= a1[i] {
            i += 1
        }

        if i == a1.count - 1 { break }
        let buy = i
        i += 1

        // Find local maxima (sell)
        while i < a1.count && a1[i] >= a1[i - 1] {
                  i += 1
              }

    let sell = i - 1

        profit += (a1[sell] - a1[buy] )


    }
    print(profit)
}



var a =  [100, 180, 260, 310, 40, 535, 695]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]
print(stockBuy(a1: a))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

