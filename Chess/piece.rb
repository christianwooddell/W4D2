class Piece 

    attr_reader :color 
    def initialize(color, board, pos)
        @color = color 
        @board = board 
        @pos = []
        
    end 

    def inspect
        @color.inspect
    end 

end 