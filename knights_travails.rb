# frozen_string_literal: true

# class for the game tree
class GameTree
  POSSIBLE_MOVES = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2],
                    [-2, -1], [-2, 1]].freeze

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def valid_move?(start, finish)
    return true if start[0].between?(0, 7) && start[1].between?(0, 7)
    return true if finish[0].between?(0, 7) && finish[1].between?(0, 7)
  end

  def knight_moves(start, finish)
    valid = valid_move(start, finish)
    return unless valid

    knight = KnightNode.new(start)
    queue = [knight]

    # until knight.position == finish
    #   create_move_list(finish)
    #   queue.shift
    # end

    # path = 

    # puts "You made it in #{path.size} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # path.each
  end

end

# class for node
class KnightNode
  attr_accessor :position, :previous, :visited

  def initialize(row = nil, column = nil)
    @position = [row, column]
    @previous = [] # children
    @visited = nil # parent
  end
end

test = GameTree.new
p test.knight_moves([0, 0], [2, 1])

# knight moves = tree children
# use breadth first search algorythm
# use recursion
