require_relative "piece.rb"
class Pawn < Piece

    WHITE_PAWN_DIRS = [[1,0], [1,1], [1,-1]]
    BLACK_PAWN_DIRS = [[-1,0], [-1,1], [-1,-1]]
    def initialize(color, board, pos)
        @steps_forward = 0
        super(color, board, pos)
    end 
    
    def symbol 
        '♟︎'.colorize(color)
    end 

    def moves 
        moves = []
        
        moves = []
        current_row, current_col = self.pos


        if self.board[current_row + self.forward_dir, current_col].empty? 
            moves << [current_row + self.forward_dir, current_col]
        end 
        left_piece = self.board[current_row + self.forward_dir, current_col + self.forward_dir]
        right_piece = self.board[current_row + self.forward_dir, current_col - self.forward_dir]
        if !left_piece.empty? && left_piece.color != self.color
            moves << left_piece.pos
        end 
        if !right_piece.empty? && right_piece.color != self.color
            moves << right_piece.pos
        end 



            dx, dy = diff
            new_row = current_row + dx 
            new_col = current_col + dy
            new_pos = [new_row, new_col]
            if (new_pos[0] >= 0 && new_pos[0] <= 7) && (new_pos[1] >= 0 && new_pos[1] <= 7)
                if self.board[new_pos].empty? || self.board[new_pos].color != self.color
                    moves << new_pos
                end 
            end 
            moves
        end 

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
        @steps_forward += 1
    end 

    def side_attacks

    end 


end 