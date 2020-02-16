//
//  KeyboardQuestion.swift
//  
//
//  Created by Jabeen's MacBook on 2/15/20.
//

import Foundation

func getCharToRow(for char: Character) -> Int {
        switch char {
            case "q","w","e","r","t","y","u","i","o","p","Q","W","E","R","T","Y","U","I","O","P":
                return 0
            case "a","s","d","f","g","h","j","k","l","A","S","D","F","G","H","J","K","L":
                return 1
            case "z","x","c","v","b","n","m","Z","X","C","V","B","N","M":
                return 2
            default:
                return 3
        }
    }
    
    func findWords(_ words: [String]) -> [String] {
        
        var arr: [String] = []
        var countSet = Set<Int>()
        
        for word in words {
            countSet = []
            for char in word {
                let digit = getCharToRow(for: char)
                countSet.insert(digit)
            }
            if countSet.count < 2 {
                arr.append(word)
            }
        }
        
        return arr
    }


var test = ["Alaska", "Dad", "Hello"]
print(findWords(test))
