# frozen_string_literal: true

# class to represent knight moves
class Knight
  MOVES = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2], [-2, -1], [-2, 1]].freeze
  attr_accessor :position, :previous

  def initialize(position, previous = nil)
    @position = position
    @previous = previous
  end

  def create_move_list
    MOVES.map { |move| [position[0] + move[0], position[1] + move[1]] }
    MOVES.select { |move| (0...8).include?(move[0]) && (0...8).include?(move[1]) }
    MOVES.map { |move| Knight.new(move, self) }
  end

  def print
    # puts "You made it in #{path.size} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # path.each
  end
end

def knight_moves(start, finish)
  return if start == finish

  knight = Knight.new(start)
  queue = [knight]

  knight.create_move_list.each { |move| queue.push(move) }
  
  p queue
end

knight_moves([3, 3], [4, 2])
