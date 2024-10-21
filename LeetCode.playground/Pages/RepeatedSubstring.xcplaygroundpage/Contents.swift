/*
 Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
 
 Example 1:
 Input: s = "abab"
 Output: true
 Explanation: It is the substring "ab" twice.
 
 Example 2:
 Input: s = "aba"
 Output: false
 
 Example 3:
 Input: s = "abcabcabcabc"
 Output: true
 Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
 */

import Foundation

func repeatedSubstringPattern(_ s: String) -> Bool {
    // Concatenate string with itself , Drop first and last characters
    let doubledString = (s + s).dropFirst().dropLast()
    
    return doubledString.contains(s)
}

let s = "abab"
let output = repeatedSubstringPattern(s)
print("Given string '\(s)' has repeating pattern - \(output)")
