require 'player'

describe Player do

  subject(:raedgar) { described_class.new('Raedgar') }

  it 'returns a player\'s name' do
    expect(raedgar.name).to eq 'Raedgar'
  end

  it 'has hit points' do
    expect(raedgar.hit_points).to eq 60
  end

end
