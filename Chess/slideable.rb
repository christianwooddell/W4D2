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
        
    end 


end