def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end


def position_taken?(board, index)
  board[index] == 'X' || board[index] == 'O'
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) 
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
  
   
  # get input from the user and save to a local_variables
  # convert it from input to index
  # check if its a valid move
  # if it is... make the move
  # otherwise ask for the input again... until you get a valid input 
  # end
  
end