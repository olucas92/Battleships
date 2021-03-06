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

  # def place(array)
  #   raise "Ship does not fit here" if array.size != @size
  #   raise "Ship must be placed on adjoining cells" unless adjoining(array)
  #   @cells = array
  # end

  # def adjoining(coords)
  #     previous_coord = coords.shift
  #     coords.each do |item|
  #       return true if (previous_coord.next == item) || previous_coord.reverse.next.reverse == item 
  #       previous_cood = item
  #     end 
  #     false
  # end

  def self.aircraft_carrier
    new 5
  end

  def self.battleship
    new 4
  end

  def self.submarine
    new 3
  end

  def self.destroyer
    new 3
  end

  def self.patrol_boat
    new 2
  end

end