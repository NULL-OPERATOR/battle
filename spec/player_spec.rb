require 'player'

describe Player do

  subject(:raedgar) { described_class.new('Raedgar') }
  it 'returns a player\'s name' do
    expect(raedgar.name).to eq 'Raedgar'
  end
end
