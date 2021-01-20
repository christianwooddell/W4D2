require_relative "piece.rb"
require_relative "stepable.rb"
class Knight < Piece
    include Stepable
    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    

    def symbol
        '♞'.colorize(color)
    end

    def move_diffs
        [[1,-2], [1, 2], [-1, 2], [-1, -2], [-2,1], [-2,-1], [2,1], [2,-1]]
    end 

end 