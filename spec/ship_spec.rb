require 'ship'

describe Ship do

	let(:ship) {Ship.new}

	it 'should have a size when created' do
		expect(ship.size).to eq(1)
	end

  it 'should have a health equal to size' do
    expect(ship.health).to eq(@size)
  end

  it 'should know when it is sunk' do
    ship.sink!
    expect(ship).to_not be_floating
  end



end
