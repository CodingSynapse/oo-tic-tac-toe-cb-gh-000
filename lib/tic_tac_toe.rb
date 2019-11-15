class TicTacToe

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
    def WIN_COMBINATIONS = [
    [0, 1, 2], # Top row
    [3, 4, 5], # middle row
    [6, 7, 8], #bottom row
    [0, 3, 6], #left columns
    [1, 4, 7], #middle columns
    [2 ,5, 8], #right columns
    [2, 4, 6], #diagonal
    [0, 4, 8]  #diagonal
  ]

end
