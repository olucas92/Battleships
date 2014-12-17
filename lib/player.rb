# require 'ship'
# require 'cell'
# require 'board'

class Player

  def initialize
    @fleet = [Ship.aircraft_carrier, Ship.destroyer, Ship.submarine, Ship.patrol_boat, Ship.battleship]
  end

  def ship_count
    @fleet.size
  end

  def places_ship(ship)
    raise "Not in fleet" unless @fleet.include?(ship)
    @fleet.delete(ship)
  end

end