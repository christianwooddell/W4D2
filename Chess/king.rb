require_relative "piece.rb"
require_relative "stepable.rb"

class King < Piece
    include "stepable"

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol
        '♚'.colorize(color)
    end

    def move_diffs
        [[0,-1], [0, 1], [-1, 0], [1, 0], [-1, -1], [-1, 1], [1, -1], [1, 1]]  
    end 

end 