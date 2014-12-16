class Ship

  def initialize(size)
    @size = size
    @health = size
  end

	def size
		@size
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
    health == 0
  end

  def self.aircraft_carrier
    new 5
  end


end