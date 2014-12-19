# require 'ship'
# require 'cell'
# require 'board'

class Player

  attr_accessor :fleet
  attr_accessor :patrol_boat, :aircraft_carrier, :destroyer, :battleship, :submarine

  def initialize
    @patrol_boat = Ship.patrol_boat
    @aircraft_carrier = Ship.aircraft_carrier
    @destroyer = Ship.destroyer
    @battleship = Ship.battleship
    @submarine = Ship.submarine
    @fleet = [@aircraft_carrier, @destroyer, @submarine, @battleship, @patrol_boat]
  end

  def ship_count
    @fleet.size
  end

  def place(board, ship, coords)
    raise "Ship does not fit here" if coords.size != ship.size
    raise "Ship must be placed on adjoining cells" unless adjoining(coords)
    raise "No ships left to place!" if empty
    board.receive(ship, coords)
    fleet.delete(ship)
  end

  def adjoining(coords)
    previous_coord = coords.dup.shift
    coords.each do |item|
      return true if (previous_coord.next == item) || previous_coord.reverse.next.reverse == item 
    end 
    false
  end

  def empty
    true if ship_count == 0
  end

end