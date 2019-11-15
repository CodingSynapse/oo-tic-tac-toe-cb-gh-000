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

  def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

end
