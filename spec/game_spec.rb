require 'game'

describe Game do

  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe '#attacked' do
    it 'triggers attack on player' do
      expect(player1).to receive(:attacked)
      subject.attack player1
    end
  end

end
