# frozen_string_literal: true

class GameTree
    KNIGHT_POSSIBLE_MOVES = [[x+1, y+2], [x+1, y-2], [x+2, y-1], [x+2, y+1], 
        [x-1, y+2], [x-1, y-2], [x-2, y-1], [x-2, y+1]]

    def initialize
    end

    def create_board
        @board = Array.new
    end

    def valid_move
    end

    def knight_moves([x, y])
    end
end

class KnightNode
    def initialize
    end
end

# create knight to 'move' around board
# knight moves = tree children
# use breadth first search algorythm
# use to find shortest path  between start and end position of knight
# output full path 
# knight_moves([3,3],[4,3])
# You made it in 3 moves!  Here's your path:
# [3,3]
# [4,5]
# [2,4]
# [4,3]
# use recursion