require_relative "piece.rb"
class Rook < Piece 

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol
        '♜'.colorize(color)
    end

    def moves_dirs
        HORIZONTAL_DIRS
    end

end 