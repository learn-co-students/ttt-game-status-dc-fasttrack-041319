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
  # the rows 
  ]
  
def won? 
  if WIN_COMBINATIONS == false
    puts false 
  end 
  else 
   puts WIN_COMBINATIONS[]
  end
end

def full?
  if board[] = full_board["X", "O", "X", "O", "X", "X", "O", "X", "O"]
      puts true
  end
  else false
end 

def draw?
  if won? == false && full? == true
    puts true
  end
  else if won? == false && full? == false
    puts false 
  end
  else if won? == true
    puts false
  end
end

def over?
  if won? == true || draw? == true || full? == true
    puts true 
  end
end

def winner
  if over? == true && WIN_COMBINATIONS[x] == won?
   puts WIN_COMBINATIONS[x]
  end
end


