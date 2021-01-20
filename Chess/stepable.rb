module Stepable

    def moves 
        moves = []
        current_row, current_col = self.pos
        self.move_diffs.each do |diff|
            dx, dy = diff
            new_row = current_row + dx 
            new_col = current_col + dy
            new_pos = [new_row, new_col]
            if new_pos[0] >= 0 || new_pos[0] <= 7
                if self.board[new_pos].empty?
                    moves << new_pos
                end 
            end 
            moves << new_pos
        end 
        
        

    end 

    private

    def move_diffs
        raise NotImplementedError
    end 

end 