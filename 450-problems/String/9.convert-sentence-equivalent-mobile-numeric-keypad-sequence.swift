//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/convert-sentence-equivalent-mobile-numeric-keypad-sequence/

func convertToKeypadSequence(_ s: String) -> String {

    let keypad: [Character: String] = [
        "A": "2",    "B": "22",   "C": "222",
        "D": "3",    "E": "33",   "F": "333",
        "G": "4",    "H": "44",   "I": "444",
        "J": "5",    "K": "55",   "L": "555",
        "M": "6",    "N": "66",   "O": "666",
        "P": "7",    "Q": "77",   "R": "777",  "S": "7777",
        "T": "8",    "U": "88",   "V": "888",
        "W": "9",    "X": "99",   "Y": "999",  "Z": "9999",
        " ": "0"
    ]

    var result = ""

    for ch in s.uppercased() {
        if let val = keypad[ch] {
            result += val
        }
    }

    return result
}


