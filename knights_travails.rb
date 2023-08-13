# frozen_string_literal: true

# class to represent knight moves
class Knight
  attr_accessor :position, :previous

  def initialize(position = nil, previous = nil)
    @position = position
    @previous = previous
  end

  def create_move_list
    moves = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2], [-2, -1], [-2, 1]] # possible moves knight can make
    moves.map! { |move| [position[0] + move[0], position[1] + move[1]] }
    moves.keep_if { |move| move[0].between?(0, 7) && move[1].between?(0, 7) }
  end

  def build_tree(start, finish)
    queue = [Knight.new(start)]
    knight = queue.shift

    until knight.position == finish
      knight.create_move_list.each do |move| # sets next move and reassigns current position to previous one
        next_move = Knight.new(move, knight) # each move goes into queue until knight reaches finish position
        queue.push(next_move)
      end
      knight = queue.shift
    end
    knight # return queue of nodes with moves made from start to finish position
  end

  def print(path)
    puts "You made it in #{path.size - 1} moves! Here's your path: "
    path.reverse.each { |move| puts move.to_s }
  end
end

def knight_moves(start, finish)
  knight = Knight.new
  knight = knight.build_tree(start, finish)
  path = [] # array for moves made by knight

  until knight.position == start # retracing steps to record route of knight's positions
    path.push(knight.position)
    knight = knight.previous
  end

  path.push(knight.position)
  knight.print(path)
end

knight_moves([3, 2], [7, 4])
knight_moves([1, 6], [3, 3])
knight_moves([2, 4], [6, 7])
