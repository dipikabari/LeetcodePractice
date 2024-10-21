/*
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
 
 Return the merged string.
 
 Example 1:
 
 Input: word1 = "abc", word2 = "pqr"
 Output: "apbqcr"
 Explanation: The merged string will be merged as so:
 word1:  a   b   c
 word2:    p   q   r
 merged: a p b q c r
 */

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var mergedString = ""
    let length1 = word1.count
    let length2 = word2.count
    let maxLength = max(length1,length2)
    
    let index1 = word1.startIndex
    let index2 = word2.startIndex
    
    for i in 0..<maxLength {
        if i < length1 {
            let currentIndex1 = word1.index(index1, offsetBy: i)
            mergedString.append(word1[currentIndex1])
        }
        
        if i < length2 {
            let currentIndex2 = word2.index(index2, offsetBy: i)
            mergedString.append(word2[currentIndex2])
        }
    }
    
    return mergedString
}

let word1 = "abc"
let word2 = "pqrstu"
let result = mergeAlternately(word1,word2)
print("Resulting string : \(result)")
