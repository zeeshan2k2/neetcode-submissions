class Solution {
    var finalAnswer = true
    var dotCount = 0
    var board3x3: [Character] = []
    var boardRow: [Character] = []
    var boardColumn: [Character] = []
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var count = 0
        var myStart = 0
        var myFinish = 3
        var myStart2 = 0
        var myFinish2 = 3
        
        
        // for row
        for i in board {
            if boardDuplicateChecker(board: board, enteredBoard: i) == false {
                return false
            }
        }
        
        while count < 9 {
//            print()
//            print("This is the \(count + 1) iteration.")
            
            // for column
            for i in 0..<board.count {
                boardColumn.append(board[i][count])
            }
            
            if boardDuplicateChecker(board: board, enteredBoard: boardColumn) == false {
                return false
            }
            
            boardColumn.removeAll()
            
            
            if count != 0 && count % 3 == 0 {
                myStart += 3
                myFinish += 3
                
                myStart2 = 0
                myFinish2 = 3
            }
            
            // for 3x3 boxes
            for i in myStart..<myFinish {
                for j in myStart2..<myFinish2 {
//                    print(board[i][j])
                    board3x3.append(board[i][j])
                }
            }
            
            
//            print("This is the board of the \(count) iteration: \(newBoard)")

            finalAnswer = boardDuplicateChecker(board: board, enteredBoard: board3x3)
            
            board3x3.removeAll()
            
            myStart2 += 3
            myFinish2 += 3
            
            count += 1
        }
        
//        print("This is the final answer: \(finalAnswer)")
        return finalAnswer

    }
    
    func boardDuplicateChecker(board: [[Character]], enteredBoard: [Character]) -> Bool {
        for i in enteredBoard {
            if i == "." {
                dotCount += 1
            }
        }
        
        let newBoardSet = Set(enteredBoard)
        
        if dotCount == 0 {
            if newBoardSet.count != 9 {
                finalAnswer = false
            }
        } else {
            if (newBoardSet.count + dotCount - 1) != 9 {
                finalAnswer = false
            }
        }
        
        dotCount = 0
        
        return finalAnswer
    }

}