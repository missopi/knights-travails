# frozen_string_literal: true

# class for the game tree
class GameTree
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def knight_moves(start, finish)
    knight = KnightNode.new(start)
    queue = [knight]

  end

  def print
    puts "You made it in #{path.size} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # path.each
  end
end

# class for node
class KnightNode
  POSSIBLE_MOVES = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2],
                    [-2, -1], [-2, 1]].freeze
  attr_accessor :position, :previous, :visited

  def initialize(position)
    @position = position
    @previous = [] # children
    @visited = nil # parent
  end

  def create_move_list
    move_list = []
    POSSIBLE_MOVES.each do |move|
      new_move = [position[0] + move[0], position[1] + move[1]]
      move_list.push(new_move) if valid_move?(new_move)
    end
    move_list
  end

  def valid_move?(move)
    return true if move[0].between?(0, 7) && move[1].between?(0, 7)
  end
end

test = GameTree.new
p test.knight_moves([0, 0], [2, 1])

# knight moves = tree children
# use breadth first search algorythm
# use recursion
