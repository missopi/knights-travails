# frozen_string_literal: true

# class for the game tree
class GameTree
  POSSIBLE_MOVES = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2],
                    [-2, -1], [-2, 1]].freeze

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def valid_move
    # return true if the move is still on the game board
  end

  def knight_moves(start, finish)
    knight = KnightNode.new(start)
    # create tree to finish position
    # record path to finish position (move list)
    # print result
    # puts "You made it in #{path.size} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # path.each
  end

  def create_move_list
    # create array of previous moves made
  end
end

# class for node
class KnightNode
  attr_accessor :position, :previous, :visited

  def initialize(column = nil, row = nil)
    @position = [column, row]
    @previous = []
    @visited = false
  end
end

p GameTree.new


# knight moves = tree children
# use breadth first search algorythm
# use to find shortest path  between start and end position of knight

# use recursion
