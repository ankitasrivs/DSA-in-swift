//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/unoccupied-computers-1646661078/1?utm_source=geeksforgeeks&utm_medium=ml_article_practice_tab&utm_campaign=article_practice_tab

func countWalkedAway(_ N: Int, _ S: String) -> Int {
    var status = [Character: Bool]()  // only store customers currently using computer
    var occupied = 0
    var walkedAway = 0

    for ch in S {
        if status[ch] == nil {
            // Arrival
            if occupied < N {
                status[ch] = true   // mark as using computer
                occupied += 1
            } else {
                walkedAway += 1     // no computer available
            }
        } else {
            // Departure
            status[ch] = nil       // free the computer
            occupied -= 1
        }
    }

    return walkedAway
}
