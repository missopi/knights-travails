# frozen_string_literal: true

# class to represent knight moves
class Knight
  attr_accessor :position, :previous

  def initialize(position, previous = nil)
    @position = position
    @previous = previous
  end

  def create_move_list
    # possible moves that knight can make
    moves = [[1, 2], [1, -2], [2, -1], [2, 1], [-1, 2], [-1, -2], [-2, -1], [-2, 1]]
    moves.map! { |move| [position[0] + move[0], position[1] + move[1]] }
  end

  def build_tree(start, finish)
    queue = [Knight.new(start)]
    knight = queue.shift

    until knight.position == finish
      knight.create_move_list.each do |move|
        # sets next move and reassigns current position to previous one
        next_move = Knight.new(move, knight)
        # move each move into the queue of nodes until current position reaches finish position
        queue.push(next_move)
      end
      knight = queue.shift
    end
    # return queue of nodes with moves made from start to finish position
    knight
  end

  def print
    # puts "You made it in #{path.size} moves! Here's your path: "
    # puts full path of moves from create_move_list method
    # path.each
  end
end

def knight_moves(start, finish) end


test = Knight.new(nil)
p test.build_tree([3, 3], [7, 2])
