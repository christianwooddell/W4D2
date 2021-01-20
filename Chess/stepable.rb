module Stepable

    def moves 
        moves = []
        moves << self.move_diffs


    end 

    private

    def move_diffs
        raise NotImplementedError
    end 

end 