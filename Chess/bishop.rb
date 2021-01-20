require_relative "piece.rb"
class Bishop < Piece

    include Slideable
    def initialize(color, board, pos)
        super(color, board, pos)
    end 

    def symbol
        '♝'.colorize(color)
    end

    def moves_dirs
        
    end

end 