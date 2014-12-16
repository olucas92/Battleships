class Ship

  def initialize(cells)
    @cells = cells
    @health = cells.size
  end

	def size
		@cells.size
	end

  def health
    @health
  end

  def floating?
    not sunk?
  end

  def hit!
    @health = health - 1
  end

  def sunk?
    @cells.all? { |cell| cell.hit? }
  end

end