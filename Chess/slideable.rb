module Slideable

    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS
    HORIZONTAL_DIRS = [
        [0, -1], # left
        [0, 1],  # right
        [-1, 0], # up
        [1, 0],  # down 
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1], # up + left
        [-1, 1],  # up + right
        [1, -1], # down + left
        [1, 1],  # down + right
    ].freeze

    def moves 
        moves = []
        
        self.moves_dirs.each do |dir|
            dx, dy = dir
            moves << self.grow_unblocked_moves_in_dir(dx, dy)
        end 
        moves
    end 



    def grow_unblocked_moves_in_dir(dx, dy)
        moves = [] 
        curr_row, curr_col = self.pos 
        # gets piece's current row and current cols
        # start a loop 
        stop = false 
        until stop 
            new_row = current_row + dx 
            new_col = current_col + dy
            new_pos = [new_row, new_col]
            if self.board[new_pos].empty?
                moves << new_pos
            elsif self.board[new_pos].color != self.color
                moves << new_pos 
                stop = true
            else 
                stop = true 
            end 
        end 
        moves 
    end 



end