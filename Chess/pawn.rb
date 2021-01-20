require_relative "piece.rb"
class Pawn < Piece

    def initialize(color, board, pos)
        color == :white ? @steps_forward = pos[0]-1 : @steps_forward = 6 - pos[0] 
        super(color, board, pos)

    end 
    
    def symbol 
        '♟︎'.colorize(color)
    end 

    def moves 
        moves = []
        current_row, current_col = self.pos

        new_poss = [[current_row + self.forward_dir, current_col], 
         [current_row + self.forward_dir, current_col + self.forward_dir],
         [current_row + self.forward_dir, current_col - self.forward_dir]
         ]

        forward = new_poss[0]
        left = new_poss[1]
        right = new_poss[2]

        

        new_poss.each_with_index do |new_pos, i|
            if (new_pos[0] >= 0 && new_pos[0] <= 7) && (new_pos[1] >= 0 && new_pos[1] <= 7)

                if self.board[new_pos].empty? && i == 0
                    moves << new_pos
                
                # left_piece = self.board[current_row + self.forward_dir, current_col + self.forward_dir]
                # right_piece = self.board[current_row + self.forward_dir, current_col - self.forward_dir]
                elsif i == 1 && (!self.board[new_pos].empty? && self.board[new_pos].color != self.color)
                    moves << new_pos
                elsif i == 2 && (!self.board[new_pos].empty? && self.board[new_pos].color != self.color)
                    moves << new_pos
                end 
            end 
        end 
        moves
    end 

    private 

    def at_start_row?
        @steps_forward == 0
    end 

    def forward_dir 
       self.color == :white ? return 1 : return -1
    end 

    def forward_steps
        @steps_forward 
    end 

    def side_attacks

        self.board[new_pos].color != self.color
    end 


end 