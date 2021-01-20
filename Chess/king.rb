require_relative "piece.rb"
class King < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol
        '♚'.colorize(color)
    end

end 