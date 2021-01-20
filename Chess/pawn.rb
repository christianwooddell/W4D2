require_relative "piece.rb"
class Pawn < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol 
        '♟︎'.colorize(color)
    end 

end 