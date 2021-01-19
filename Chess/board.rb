require_relative "piece.rb"

class Board 

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}

    end 

    def fill_board
        (0...@rows.length).each do |i| 
            (0...@rows.length).each do |j|
                if i == 0 
                    rows[i][0] = Rook.new
                    rows[i][1] = Knight.new
                    rows[i][2] = Bishop.new 
                    rows[i][3] = Queen.new 
                    rows[i][4] = King.new 
                    rows[i][5] = Bishop.new 
                    rows[i][6] = Knight.new 
                    rows[i][7] = Rook.new 
                if i == 1 
                    @rows[i][j] = Pawn.new 
                end 
                if i > 1 || i < 6
                    @rows[i][j] = NullPiece.new 
                end 
                if i == 6 
                    @rows[i][j] = Pawn.new 
                end 
    end 

    def move_piece(start_pos, end_pos)

    end 

end 