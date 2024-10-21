/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.
 */

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}

let s = "rat"
let t = "art" //"car"

let output = isAnagram(s,t)
