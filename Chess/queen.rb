require_relative "piece.rb"
class Queen < Piece 

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol
        '♛'.colorize(color)
    end

end 