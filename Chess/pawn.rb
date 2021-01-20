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
        current_row, current_col = self.pos

        # new_poss = [[current_row + self.forward_dir, current_col], 
        #  [current_row + self.forward_dir, current_col + self.forward_dir]
        #  [current_row + self.forward_dir, current_col - self.forward_dir]
        #  ]

        # forward = new_poss[0]
        # left = new_poss[1]
        # right = new_poss[2]

        

        new_poss.each_with_index
            if (new_pos[0] >= 0 && new_pos[0] <= 7) && (new_pos[1] >= 0 && new_pos[1] <= 7)

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
        @steps_forward += 1
    end 

    def side_attacks

    end 


end 