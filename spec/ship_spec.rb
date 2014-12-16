require 'ship'

describe Ship do

 let(:ship) { Ship.new(2) }
	
  it 'should have a size when created' do
    expect(ship.size).to eq(2)
  end

  it 'should have a health equal to size' do
    expect(ship.health).to eq(2)
  end

  it "should lose a health point when hit" do
    expect { ship.hit! }.to change { ship.health }.from(2).to(1)
  end

  it "should be sunk if all health is lost" do
    ship.hit!
    ship.hit!
    expect(ship.sunk?).to eq(true)
  end

  it "should not be sunk if health is not 0" do
    ship.hit!
    expect(ship).to be_floating
  end

  it "should be able create an aircraft carrier" do
    expect(Ship.aircraft_carrier.size).to eq 5
  end

end
