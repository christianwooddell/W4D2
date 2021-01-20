require_relative "piece.rb"
require_relative "rook.rb"
require_relative "bishop.rb"
require_relative "knight.rb"
require_relative "king.rb"
require_relative "queen.rb"
require_relative "pawn.rb"
require_relative "nullpiece.rb"

class Board 

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        fill_board
    end 

    def fill_board
        (0...@rows.length).each do |i| 
            (0...@rows.length).each do |j|
                if i == 0 
                    @rows[i][0] = Rook.new(:white, self, [i,0])
                    @rows[i][1] = Knight.new(:white, self, [i,1])
                    @rows[i][2] = Bishop.new(:white, self, [i,2]) 
                    @rows[i][3] = Queen.new(:white, self, [i,3]) 
                    @rows[i][4] = King.new(:white, self, [i,4]) 
                    @rows[i][5] = Bishop.new(:white, self, [i,5]) 
                    @rows[i][6] = Knight.new(:white, self, [i,6]) 
                    @rows[i][7] = Rook.new(:white, self, [i,7]) 
                end
                if i == 1 
                    @rows[i][j] = Pawn.new(:white, self, [i,j])
                end 
                if i > 1 && i < 6
                    @rows[i][j] = NullPiece.instance
                end 
                if i == 6 
                    @rows[i][j] = Pawn.new(:black, self, [i,j])
                end 
                if i == 7
                    @rows[i][0] = Rook.new(:black, self, [i, 0])
                    @rows[i][1] = Knight.new(:black, self, [i, 1])
                    @rows[i][2] = Bishop.new(:black, self, [i, 2])
                    @rows[i][3] = King.new(:black, self, [i, 3])
                    @rows[i][4] = Queen.new(:black, self, [i, 4])  
                    @rows[i][5] = Bishop.new(:black, self, [i, 5])
                    @rows[i][6] = Knight.new(:black, self, [i, 6])
                    @rows[i][7] = Rook.new(:black, self, [i, 7])
                end
            end 
        end
    end 

    def [](pos)
        row, col = pos 
        @rows[row][col] 
    end 

    def []=(pos, val)
        row, col = pos 
        @rows[row][col] = val 
    end 

    def move_piece(start_pos, end_pos)
        piece = self[start_pos]
        raise "No piece at start position" if piece.color == :null #piece.empty?
        destination = self[end_pos]
        # raise "error" if piece.valid_moves == false #whatever we need from Piece#valid_moves
        self[end_pos] = piece 
        self[start_pos] = NullPiece.instance
    end 

end 