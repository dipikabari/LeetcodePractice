/*
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 
 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.
 Example 2:
 
 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.
 
 */

import Foundation

func findNeedleInHaystack(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
        return 0
    }
    
    if let range = haystack.range(of: needle) {
        return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
    }
    
    return -1
}

let haystack = "wersadbutsad"
let needle = "sad"

let output = findNeedleInHaystack(haystack, needle)
print(output)


let haystack1 = "leetcode"
let needle1 = "leeto"
let output1 = findNeedleInHaystack(haystack1, needle1)
print(output1)
