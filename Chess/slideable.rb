module Slideable

    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS
    HORIZONTAL_DIRS = [
        [0, -1], # left
        [0, 1],  # right
        [-1, 0], # up
        [1, 0],  # down 
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1], # up + left
        [-1, 1],  # up + right
        [1, -1], # down + left
        [1, 1],  # down + right
    ].freeze

    def moves 
        moves = []
        #
        moves
    end 

    def grow_unblocked_moves_in_dir(dx, dy)
        moves = [] 
        # gets piece's current row and current cols
        # start a loop 
        stop = false 
        until stop 
            current_row += dx 
    end 



end