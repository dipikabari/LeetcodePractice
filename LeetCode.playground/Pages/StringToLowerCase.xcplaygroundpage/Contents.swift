/*
 Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.
 
 Example 1:
 Input: s = "Hello"
 Output: "hello"
 
 Example 2:
 Input: s = "here"
 Output: "here"
 
 Example 3:
 Input: s = "LOVELY"
 Output: "lovely"
 
 1. char.asciiValue: Fetches the ASCII value of the character.
 2.Uppercase Check: Uppercase letters (A to Z) have ASCII values in the range [65, 90].
 3.Conversion: Add 32 to the ASCII value to get the corresponding lowercase letter.
 4.Convert the new ASCII value back to a Character using UnicodeScalar.
 5.Non-Alphabet Characters: Characters that are not uppercase letters are appended to the result unchanged.
 */

import Foundation

func toLowerCase(_ s: String) -> String {
    var result = ""
    
    for char in s {
        print("char.asciiValue : \(String(describing: char.asciiValue))")
        if let asciiValue = char.asciiValue, asciiValue >= 65 && asciiValue <= 90 {
            let lowerChar = Character(UnicodeScalar(asciiValue + 32))
            result.append(lowerChar)
        } else {
            result.append(char)
        }
    }
    
    return result
}

func printAsciiValues(){
    for num in 65...122 {
        print("\(num) : \(UnicodeScalar(num) ?? "A")")
    }
}

printAsciiValues()

let s = "Hello"
let output = toLowerCase(s)
print("Given string : \(s) \nModified string : \(output)")
