# frozen_string_literal: true

# class for the game tree
class GameTree
  POSSIBLE_MOVES = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2],
                    [-2, -1], [-2, 1]].freeze

  def initialize
  end

  def create_board
    @board = Array.new(8) { Array.new(8) }
  end

  def valid_move
    # return true if the move is still on the game board
  end

  def knight_moves(start, finish)
  end

  def create_move_list
    # create array of previous moves made
  end

  def number_of_moves
    # add up number of elements in move list
    # moves = integer
  end

  def print_result
    puts "You made it in #{moves} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # [3,3]
    # [4,5]
    # [2,4]
    # [4,3]
  end
end

# class for node
class KnightNode
  def initialize
    # record positiopn knight is in [x, y]
    # record previous node which it came from (for path)
    # record if node has position has been visited before
  end
end

chess = GameTree.new
p chess.create_board

# knight moves = tree children
# use breadth first search algorythm
# use to find shortest path  between start and end position of knight

# use recursion
