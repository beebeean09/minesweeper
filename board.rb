require_relative 'tile.rb'

class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(9){ Array.new(9){Tile.new}}
  end

  def all_positions
    positions = []
    (0..8).each do |i|
      (0..8).each do |j|
        positions << [i, j]
      end
    end

    positions
  end

  def random_placement
    all_positions.shuffle.take(10)
  end

  def place_bomb
    random_placement.each do |pos|
      grid[pos[0]][pos[1]].place_bomb
    end
  end

  def []=(pos, value)
    x, y = pos
    grid[x][y] = value
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end


end

a = Board.new
a.place_bomb
p a.grid
