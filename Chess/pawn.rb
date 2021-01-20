require_relative "piece.rb"
class Pawn < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
    end 
    
    def symbol 
        '♟︎'.colorize(color)
    end 

    def moves 

    end 

    private 

    def forward_dir 
       self.color == :white ? return 1 : return -1
    end 

end 