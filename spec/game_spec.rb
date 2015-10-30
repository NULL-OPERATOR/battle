require 'game'

describe Game do

  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  subject { described_class.new(player1, player2) }

  before(:each) do
    allow(player2).to receive(:attacked)
  end

  it 'retrieves player one' do
    expect(subject.player_one).to eq player1
  end

  it 'retrieves player two' do
    expect(subject.player_two).to eq player2
  end

  describe '#attacked' do
    it 'triggers attack on player' do
      expect(player2).to receive(:attacked)
      subject.attack
    end
  end

  it 'switches when an attack is triggered' do
    subject.attack
    expect(subject.attacking_player).to eq 2
  end
end
