class TicTacToe
  WIN_COMBINATIONS = [
      [0, 1, 2], # Top row
      [3, 4, 5], # middle row
      [6, 7, 8], #bottom row
      [0, 3, 6], #left columns
      [1, 4, 7], #middle columns
      [2 ,5, 8], #right columns
      [2, 4, 6], #diagonal
      [0, 4, 8]  #diagonal
    ]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end


  def input_to_index(input)
    return input.to_i - 1
  end


  def move(position, value)
      @board[position] = value
  end

  def position_taken?(index)
!(@board[index].nil? || @board[index] == " ")
end

def valid_move?(index)
  if @board[index] == "X" || @board[index] == "O" || !index.between?(0, 8)
    return false
  else
    return true
  end
end

def turn_count
  turncount = 0
  @board.each do |pos|
    if pos == "X" || pos == "O"
      turncount += 1
    end
  end
  return turncount
end

def current_player
    turn_count % 2 == 0 ? "X" : "O"
end

def turn
  puts "Player #{current_player}, please enter a number 1-9:"
  input = gets.strip
  index = input_to_index(input)
  player = current_player
  if valid_move?(index)
    move(index, player)
    display_board(@board)
  else
    turn(@board)
  end
end












  def won?(board)

      WIN_COMBINATIONS.each do |index|
        combo_0 = index[0]
        combo_1 = index[1]
        combo_2 = index[2]

        position_1 = board[combo_0]
        position_2 = board[combo_1]
        position_3 = board[combo_2]

        if position_1 == "X" && position_2 =="X" && position_3 == "X" ||
           position_1 == "O" && position_2 =="O" && position_3 == "O"
          return index
        end
      end
      return false
  end

  def full?(board)
    board.all? do |move|
      move == "X" || move == "O"
    end
  end

  def draw?(board)
    if !won?(board) && full?(board)
      return true
    end
  end

  def over?(board)
    if draw?(board) || full?(board) || won?(board)
      true
    end
  end

  def winner(board)
    combo = won?(board)
    if combo
      return board[combo[0]]
    end
  end


  def play(board)
    turn(board) until over?(board)
     if won?(board)
       puts "Congratulations #{winner(board)}!"
     elsif draw?(board)
       puts "Cat's Game!"
     end
  end





end
