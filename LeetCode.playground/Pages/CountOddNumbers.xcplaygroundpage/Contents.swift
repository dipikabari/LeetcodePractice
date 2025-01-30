/***
 Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).
 
 Example 1:
 Input: low = 3, high = 7
 Output: 3
 Explanation: The odd numbers between 3 and 7 are [3,5,7].
 
 Example 2:
 Input: low = 8, high = 10
 Output: 1
 Explanation: The odd numbers between 8 and 10 are [9].
 
 ***/

import Foundation

func countOdds(_ low: Int, _ high: Int) -> Int {
  var counter = 0
    
    for i in low...high {
        if i % 2 != 0 {
            counter += 1
        }
    }
  return counter
}

let low = 3
let high = 7
let output = countOdds(low, high)
print("There are \(output) odd number(s) between \(low) and \(high)")
