require 'player'
require 'ship'

describe Player do

let(:player) { Player.new }
# let(:ship) {double :ship, size: 2}
# let(:ship) {Ship.patrol_boat}

  it 'should have a fleet of 5 ships at start of game' do
    expect(player.ship_count).to eq(5)
  end

  it 'should be able to place a ship' do
    expect(player.ship_count).to eq 5
    player.place(player.patrol_boat,['a1','a2'])
    expect(player.ship_count).to eq 4
  end



end




  # it 'should be able to be placed using an array of cells' do
  #   expect(ship.place(["a1","a2"]).class).to eq(Array)
  # end

  # it 'should only be placed on the equivalent number of cells to size' do
  #   expect(lambda { ship.place(['a1','a2','a3']) }).to raise_error(RuntimeError, "Ship does not fit here")
  # end

  # it "should only be able to be placed on adjoining cells" do
  #   expect{ship.place(["a1", "j2"])}.to raise_error(RuntimeError, "Ship must be placed on adjoining cells") 
  # end

  # it "should know if array is not sequential" do
  #     expect(ship.adjoining(["a1", "j2"])).to eq false
  # end








  #  it 'should know when all ships have been placed' do
  #   Ship.aircraft_carrier.place(["a1","b1", "c1", "d1", "e1"])
  #   Ship.destroyer.place(["a2", "b2", "c2"])
  #   Ship.submarine.place(["a3", "b3", "c3"])
  #   Ship.battleship.place(["a4", "b4", "c4", "d4"])
  #   Ship.patrol_boat.place(["a5", "b5"])
  #   expect(player.ship_count).to eq(0)
  # end