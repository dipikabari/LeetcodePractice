/***
 Given an m x n matrix, return all elements of the matrix in spiral order.
 Example 1:
 ----------
 |  1   |  2  |  3  |
 ----------
 |  4  |  5   |  6  |
 ----------
 |  7  |  8   |  9  |
 ----------
 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [1,2,3,6,9,8,7,4,5]
 
 Example 2:
 Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 
 Constraints:
 m == matrix.length
 n == matrix[i].length
 1 <= m, n <= 10
 -100 <= matrix[i][j] <= 100
 ***/

import Foundation

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var spiralMatrix = [Int]()
    
    guard !matrix.isEmpty else {
        return spiralMatrix
    }
    
    //Edges
    var top = 0
    var bottom = matrix.count - 1
    var left = 0
    var right = matrix[0].count - 1
    
    while true {
        // Traverse from left to right along the top row
        for column in left...right {
            spiralMatrix.append(matrix[top][column])
        }
        top += 1
        if top > bottom {
            break
        }
        
        // Traverse from top to bottom along right column
        for row in top...bottom {
            spiralMatrix.append(matrix[row][right])
        }
        right -= 1
        if left > right {
            break
        }
       
        // Traverse from right to left along bottom row (within bounds)
        if top <= bottom {
            for column in stride(from: right, through: left, by: -1) {
                spiralMatrix.append(matrix[bottom][column])
            }
            bottom -= 1
            if top > bottom {
                break
            }
        }
        
        // Traverse from bottom to top along left column (within bounds)
        if left <= right {
            for row in stride(from: bottom, through: top, by: -1){
                spiralMatrix.append(matrix[row][left])
            }
            left += 1
            if left > right {
                    break
            }
        }
            
    }
    return spiralMatrix
}

let matrix = [[1,2,3],[4,5,6],[7,8,9]] //[[1,2],[3,4]] //[[1,2,3,4],[5,6,7,8],[9,10,11,12]] //
let output = spiralOrder(matrix)
print("Matrix in spiral order is : \(output)")
