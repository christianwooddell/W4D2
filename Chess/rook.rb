require_relative "piece.rb"
require_relative "slideable.rb"
class Rook < Piece 
    include Slideable

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