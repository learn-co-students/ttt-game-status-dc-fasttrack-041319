# Helper Method

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = WIN_COMBINATIONS[
  [0,1,2]
  [3,4,5]
  [6,7,8]
  ]

def won?
  if WIN_COMBINATIONS == FALSE
    puts FALSE
  end
  else
    puts WIN_COMBINATIONS[]
  end
end

def full?
  if board[] = full_board["X", "O", "X", "O", "X", "X", "O", "X", "O"]
      puts TRUE
  end
  else FALSE
end

def draw?
  if won? == FALSE && full? == TRUE
    puts TRUE
  end
  else if won? == FALSE && full? == FALSE
    puts FALSE
  end
  else if won? == TRUE
    puts FALSE
  end
end

def over?
  if won? == TRUE || draw? == TRUE || full? == TRUE
    puts TRUE
  end
end

def winner
  if over? == TRUE && WIN_COMBINATIONS[x] == won?
    puts WIN_COMBINATIONS[x]
  end
end

    
      

