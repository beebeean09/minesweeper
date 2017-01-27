class Tile

  def initialize(bomb = false)
    @bomb = bomb
    # @unexplored = true
    # @flagged = false
  end

  def place_bomb
    @bomb = true
  end

  def explore
    @unexplored = false
  end

  def flag
    if @flagged == true
      @flagged = false
    else
      @flagged = true
    end
  end

end
