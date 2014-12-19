require 'cell'

describe Cell do
  
  let (:cell) {Cell.new}


  it 'should have a content of water' do
    expect(cell.content).to_eq(:water)
  end


  # it 'should have no ships on creation' do
  #   expect(cell).not_to be_full
  # end

  # it 'should be able to register a ship' do
  #   cell.fill!
  #   expect(cell).to be_full
  # end

  # it 'should be able to return hit if full' do
  #   cell.fill!
  #   expect(cell.hit?).to eq(true)
  # end

  # it 'should be able to return miss if empty' do
  #   expect(cell.hit?).to eq(false)
  # end

end