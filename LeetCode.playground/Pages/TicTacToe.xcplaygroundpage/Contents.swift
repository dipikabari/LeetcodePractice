/***
 Tic-tac-toe is played by two players A and B on a 3 x 3 grid. The rules of Tic-Tac-Toe are:
 
 - Players take turns placing characters into empty squares '  '.
 - The first player A always places 'X' characters, while the second player B always places 'O' characters.
 - 'X' and 'O' characters are always placed into empty squares, never on filled ones.
 - The game ends when there are three of the same (non-empty) character filling any row, column, or diagonal.
 - The game also ends if all squares are non-empty.
 - No more moves can be played if the game is over.
 Given a 2D integer array moves where moves[i] = [row(i), col(i)] indicates that the ith move will be played on grid[row(i)][col(i)]. return the winner of the game if it exists (A or B). In case the game ends in a draw return "Draw". If there are still movements to play return "Pending".
 
 You can assume that moves is valid (i.e., it follows the rules of Tic-Tac-Toe), the grid is initially empty, and A will play first.
 
Example 1:
 Input: moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
 Output: "A"
 Explanation: A wins, they always play first.

Example 2:
 Input: moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
 Output: "B"
 Explanation: B wins.
 
 Example 3:
 Input: moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
 Output: "Draw"
 Explanation: The game ends in a draw since there are no moves to make.
 ***/

import Foundation

func tictactoe(_ moves: [[Int]]) -> String {
    /// Inilialize a 3x3 grid with empty strings
    var grid = Array(repeating: Array(repeating: Character(" "), count: 3), count: 3)
    
    for (index,move) in moves.enumerated() {
        let row = move[0]
        let column = move[1]
        grid[row][column] = index % 2 == 0 ? "X" : "0"
    }
    
    /// Check if a palyer has won
    func checkWin(_ player: Character) -> Bool {
        /// Check diagonals
        if grid[0][0] == player && grid[1][1] == player && grid[2][2] == player {
            return true
        }
        if grid[0][2] == player && grid[1][1] == player && grid[2][0] == player {
            return true
        }
        /// Check rows and columns
        for i in 0..<3 {
            if grid[i][0] == player && grid[i][1] == player && grid[i][2] == player {
                return true
            }
            if grid[0][i] == player && grid[1][i] == player && grid[2][i] == player {
                return true
            }
        }
        return false
    }
    /// Check if A wins
    if checkWin("X") {
        return "A"
    }
    
    /// Check if B wins
    if checkWin("0") {
        return "B"
    }
    
    return moves.count == 9 ? "Draw" : "Pending"
}


let moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
    //[[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]] //[[0,0],[2,0],[1,1],[2,1],[2,2]]
let output = tictactoe(moves)
print("TicTacToe game : \(output)")

