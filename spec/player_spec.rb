require 'player'
require 'ship'

describe Player do

let(:player) { Player.new }

  it 'should have a fleet of 5 ships at start of game' do
    expect(player.ship_count).to eq(5)
  end

  it 'should raise an error if trying to place a non existent ship' do
    expect{player.places_ship("banana")}.to raise_error(RuntimeError, "Not in fleet")
  end

   it 'should know when all ships have been placed' do
    Ship.aircraft_carrier.place(["a1","b1", "c1", "d1", "e1"])
    Ship.destroyer.place(["a2", "b2", "c2"])
    Ship.submarine.place(["a3", "b3", "c3"])
    Ship.battleship.place(["a4", "b4", "c4", "d4"])
    Ship.patrol_boat.place(["a5", "b5"])
    expect(player.ship_count).to eq(0)
  end

  # it 'should be able to make a move' do

  # end

  # it 'should only be able to make one move at a time' do
  # end

end