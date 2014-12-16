require 'board'

describe Board do

  let(:board) {Board.new}

  it 'should be able to place a ship to make cell full' do
    board.place("a1")
    expect(board.places["a1"]).to be_full
  end

  # it 'should knoow when it is ready' do
  #   5.times {board.place}
  # end

end