require 'board'
require 'player'

describe Board do

  let(:board) { Board.new }
  let(:player) { Player.new }
  let(:ship) { Ship.new(2) }

  it 'should have no ships to start' do
    expect(board.ship_count).to eq 0
  end

  it "should be able to receive ships from the player" do
    # 1. ask something of an object
    # 2. check for return?
    # 3. check for change in state?
    player.place(board, ship, ['a1','a2'])
    player.place(board, ship, ['b1', 'b2'])
    expect(board.ship_count).to eq 2  
  end

  it "should be able to receive ships from the player in a position" do
    board.receive(ship, 'j2')
    expect(board.ship_count).to eq 1
  end

  it "should be able to fill places given the coordinates" do
    player.place(board,player.patrol_boat,['a1','b1'])
    board.ship_cells_array
    expect(board.places[:a1]).to eq('S')
    expect(board.places[:b1]).to eq('S')

  end

  # it "should be initialized with the ships in the right cells" do
  #   player.place(board, player.patrol_ship, ['a1','a2'])

  # end 

end

