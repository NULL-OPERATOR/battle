require 'player'

describe Player do
  it 'returns a player\'s name' do
    player = Player.new('Raedgar')
    expect(player.name).to eq 'Raedgar'
  end
end
