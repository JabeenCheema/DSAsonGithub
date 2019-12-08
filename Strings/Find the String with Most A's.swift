//
//  Find the String with Most A's.swift
//  
//
//  Created by Jabeen's MacBook on 12/7/19.
//

import Foundation

// Given an array of Strings, find the String with the most a's in it.
// output: "abba"

var arr = ["apes","abba","apple"]

var overallCounter = 0
var stringWithMostAs = ""

for string in arr {
    var localCounter = 0
    for letter in string {
        if letter == "a" {
            localCounter += 1
        }
        if localCounter > overallCounter {
            overallCounter = localCounter
            stringWithMostAs = string
        }
    }
}

print(stringWithMostAs)
