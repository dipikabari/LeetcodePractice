/***
 Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
 
 Example 1:
 Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
 ----------
 |  1   |  1  |  1  |
 ----------
 |  1  |  0   |  1  |
 ----------
 |  1  |  1   |  1  |
 ----------
 Output: [[1,0,1],[0,0,0],[1,0,1]]
 ----------
 |  1   |  0  |  1  |
 ----------
 |  0  |  0   |  0  |
 ----------
 |  1  |  0   |  1  |
 ----------
 
 Example 2:
 Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
 Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]

 ***/


import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    let rowCount = matrix.count
    let columnCount = matrix[0].count
    
    var rowHasZero: [Bool] = Array(repeating: false, count: rowCount)
    var columnHasZero = Array(repeating: false, count: columnCount)
    
    // Mark rows and columns containing zeros
    for i in 0..<rowCount {
        for j in 0..<columnCount {
            if matrix[i][j] == 0 {
                rowHasZero[i] = true
                columnHasZero[j] = true
            }
        }
    }
    
    // Set rows to zero
    for i in 0..<rowCount {
        if rowHasZero[i] {
            for j in 0..<columnCount {
                matrix[i][j] = 0
            }
        }
    }
    
    // Set columns to zero
    for j in 0..<columnCount {
        if columnHasZero[j] {
            for i in 0..<rowCount {
                matrix[i][j] = 0
            }
        }
    }
    print(matrix)
}

var matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]] //[[1,1,1],[1,0,1],[1,1,1]]
setZeroes(&matrix)
