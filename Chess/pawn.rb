require_relative "piece.rb"
class Pawn < Piece

    def initialize(color, board, pos)
        @steps_forward = 0
        super(color, board, pos)
    end 
    
    def symbol 
        '♟︎'.colorize(color)
    end 

    def moves 
        moves = []
            
        moves
    end 

    #   | O |   |
    #   / |  \
    private 

    def at_start_row?
        @steps_forward == 0
    end 

    def forward_dir 
       self.color == :white ? return 1 : return -1
    end 

    def forward_steps

    end 

    def side_attacks

    end 


end 