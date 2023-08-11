# frozen_string_literal: true

# class to represent knight moves
class Knight
  attr_accessor :position, :previous

  def initialize(position)
    @position = position
    @previous = [] # children
  end

  def create_move_list
    moves = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2], [-2, -1], [-2, 1]]
    moves.map! { |move| [position[0] + move[0], position[1] + move[1]] }
    moves.select { |move| (0...8).include?(move[0]) && (0...8).include?(move[1]) }
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
