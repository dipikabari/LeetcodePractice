/***
 You are keeping the scores for a baseball game with strange rules. At the beginning of the game, you start with an empty record.
 
 You are given a list of strings operations, where operations[i] is the ith operation you must apply to the record and is one of the following:
 
 An integer x.   Record a new score of x.
 '+'.   Record a new score that is the sum of the previous two scores.
 'D'.   Record a new score that is the double of the previous score.
 'C'.   Invalidate the previous score, removing it from the record.
 
 Return the sum of all the scores on the record after applying all the operations.
 
 Example 1:
 Input: ops = ["5","2","C","D","+"]                        Output: 30
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "2" - Add 2 to the record, record is now [5, 2].
 "C" - Invalidate and remove the previous score, record is now [5].
 "D" - Add 2 * 5 = 10 to the record, record is now [5, 10].
 "+" - Add 5 + 10 = 15 to the record, record is now [5, 10, 15].
 The total sum is 5 + 10 + 15 = 30.
 
 Example 2:
 Input: ops = ["5","-2","4","C","D","9","+","+"]       Output: 27
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "-2" - Add -2 to the record, record is now [5, -2].
 "4" - Add 4 to the record, record is now [5, -2, 4].
 "C" - Invalidate and remove the previous score, record is now [5, -2].
 "D" - Add 2 * -2 = -4 to the record, record is now [5, -2, -4].
 "9" - Add 9 to the record, record is now [5, -2, -4, 9].
 "+" - Add -4 + 9 = 5 to the record, record is now [5, -2, -4, 9, 5].
 "+" - Add 9 + 5 = 14 to the record, record is now [5, -2, -4, 9, 5, 14].
 The total sum is 5 + -2 + -4 + 9 + 5 + 14 = 27.
 
 Example 3:
 Input: ops = ["1","C"]                                              Output: 0
 Explanation:
 "1" - Add 1 to the record, record is now [1].
 "C" - Invalidate and remove the previous score, record is now [].
 Since the record is empty, the total sum is 0.
 ***/

import Foundation

func calPoints(_ operations: [String]) -> Int {
    var pointsCollected: [Int] = []
    
    for (index, value) in operations.enumerated() {
        if let num = Int(value) {
            pointsCollected.append(num)
        } else if value.elementsEqual("C") {
            pointsCollected.removeLast()
        } else if value.elementsEqual("D") {
            if let num = pointsCollected.last {
                pointsCollected.append(num * 2)
            }
        } else if value.elementsEqual("+") {
            let count = pointsCollected.count
            if count >= 2 {
                let num1 = pointsCollected[count - 1]
                let num2 = pointsCollected[count - 2]
                pointsCollected.append(num1 + num2)
            }
        }
    }
    print("Points Collected -> \(pointsCollected)")
    return pointsCollected.reduce(0, +)
}

let operations = ["-60","D","-36","30","13","C","C","-33","53","79"] //["5","-2","4","C","D","9","+","+"] //["5","2","C","D","+"]
print("Given operations -> \(operations)")
let output = calPoints(operations)
print("Final points calculated : \(output)")
