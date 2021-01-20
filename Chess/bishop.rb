require_relative "piece.rb"
require_relative "slideable.rb"
class Bishop < Piece
    include Slideable
    
    def initialize(color, board, pos)
        super(color, board, pos)
    end 

    def symbol
        '♝'.colorize(color)
    end

    def moves_dirs
        DIAGONAL_DIRS
    end

end 