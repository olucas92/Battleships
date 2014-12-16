require 'ship'

describe Ship do

	let(:ship) {Ship.new}

	it 'should have a size when created' do
		expect(ship.size).to eq(1)
	end
end
