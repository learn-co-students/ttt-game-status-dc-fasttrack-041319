# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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
  WIN_COMBINATIONS.detect do |win_combination|

    # check each win combination for win
    win_X = win_combination.all? {|cell| board[cell] == "X"}
    win_O = win_combination.all? {|cell| board[cell] == "O"}

    if win_X or win_O
      return win_combination
    else
      false
    end
  end
end

board = ["O","O","O"," "," "," "," "," "," "]
def full?(board)

  full_board = [0,1,2,3,4,5,6,7,8].all? {|index| position_taken?(board, index)}
  return full_board

end

def draw?(board)
  return full?(board) && !won?(board)
end

def over?(board)
  return won?(board) || draw?(board) || full?(board)
end

def winner(board)
  
  win_combination = won?(board)
  if win_combination.is_a? Array
    return board[win_combination[0]]
  else
    return nil
  end
  
end
puts winner(board)