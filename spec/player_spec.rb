require 'player'

describe Player do
  player_1 = Player.new('John')
  player_2 = Player.new('Bill')
  it 'returns his name' do
    expect(player_1.name).to eq('John')
  end

  # it 'is able to attack a player' do
  #   expect(player_1).to respond_to(:attack).with(1).argument
  # end

  # it 'player_1 can receive damaged ' do
  #   player_1.attack(player_2)
  #   expect(player_2.hp).to eq(90)
  # end
end
