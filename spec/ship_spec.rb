require 'ship'

describe Ship do

	let(:ship) { Ship.new([double(:cell, hit?: false), double(:cell, hit?: false)]) }
  let(:sunk_ship) { Ship.new([double(:cell, hit?: true), double(:cell, hit?: true)]) }
  let(:damaged_ship) { Ship.new([double(:cell, hit?: true), double(:cell, hit?: false)])}

	it 'should have a size when created' do
		expect(ship.size).to eq(2)
	end

  it 'should have a health equal to size' do
    expect(ship.health).to eq(2)
  end

  it "should lose a health point when hit" do
    expect { ship.hit! }.to change { ship.health }.from(2).to(1)
  end

  it "should be sunk if all cells are hit" do
    expect(sunk_ship).to be_sunk
  end

  it "should not be sunk if only hit once" do
    expect(damaged_ship).to be_floating
  end

end
