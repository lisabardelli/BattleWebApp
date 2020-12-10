require 'game'
require 'player'

describe Game do
  it 'can attack a player' do
    expect(subject).to respond_to(:attack).with(1).argument
  end

  it 'reduces a players points when player is attacked' do
    initialize_2_players
    expect { subject.attack(@player_2) }.to change { @player_2.hp }.from(100).to(90)
  end
end
