require_relative "piece.rb"

class Board 

    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}

    end 

    def fill_board
        @rows[2..6]
    end 

    def move_piece(start_pos, end_pos)

    end 

end 