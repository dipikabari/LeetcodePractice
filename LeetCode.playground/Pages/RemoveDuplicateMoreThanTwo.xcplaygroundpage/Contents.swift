//: [Previous](@previous)

import Foundation

/*
func removeDuplicates(_ nums: inout [Int]) -> Int {
    let maxOccurrences = 2  // Allow each element to appear at most twice
    var k = 0  // Tracks the position for placing the next valid element
    
    for i in 0..<nums.count {
            // Check if we can add the current element
            // Only add if this is among the first two occurrences
        if k < maxOccurrences || nums[i] != nums[k - maxOccurrences] {
            nums[k] = nums[i]
            k += 1
        }
    }
    
    return k
}


    // Example Usage
var nums = [1, 1, 1, 2, 2, 3, 3, 3, 4]
let uniqueCount = removeDuplicates(&nums)
print("Count of elements allowing at most two occurrences: \(uniqueCount)")  // Output: 7
print("Array after removing duplicates: \(nums.prefix(uniqueCount))")  // Output: [1, 1, 2, 2, 3, 3, 4]
*/

func removeDuplicates1(_ nums: inout [Int]) -> Int {
    var k = 0         // Index to place the next valid element
    var count = 0     // Count occurrences of the current element
    
    for i in 0..<nums.count {
        print("i = \(i) :: k = \(k)")
        if i == 0 || nums[i] != nums[i - 1] {
           print("nums[i] != nums[i - 1] : \nnums[\(i)] != nums[\(i - 1)]")
                // New element, reset count
            count = 1
        } else {
                // Repeated element, increment count
            count += 1
        }
        
            // Only add to the array if count <= 2
        if count <= 2 {
            print("nums[k] = nums[i] : \nnums[\(k)] = nums[\(i)])")
            nums[k] = nums[i]
            k += 1
        }
        print("\n")
    }
    
    return k
}

    // Example Usage
var nums = [1, 1, 1, 2, 2, 3, 3, 3, 4]
let uniqueCount = removeDuplicates1(&nums)
print("Count of elements allowing at most two occurrences: \(uniqueCount)")  // Output: 7
print("Array after removing duplicates: \(nums.prefix(uniqueCount))")  // Output: [1, 1, 2, 2, 3, 3, 4]

