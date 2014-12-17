# require 'ship'
# require 'cell'
# require 'board'

class Player

  attr_accessor :patrol_boat

  def initialize
    @patrol_boat = Ship.patrol_boat
    @fleet = [Ship.aircraft_carrier, Ship.destroyer, Ship.submarine, @patrol_boat, Ship.battleship]
  end

  def fleet
    @fleet
  end


  def ship_count
    @fleet.size
  end

  def place(ship, coords)
    puts @fleet.inspect
    puts ship.inspect
    fleet.delete(ship)
    puts @fleet.inspect

  end

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