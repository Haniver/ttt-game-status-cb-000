# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |winning_line|
    if board[winning_line[0]] != "" && board[winning_line[0]] != " " && board[winning_line[0]] == board[winning_line[1]] && board[winning_line[1]] == board[winning_line[2]]
      return true
    end
    return false
  end
end