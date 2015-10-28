require 'game'

describe Game do

  subject {described_class.new(player1, player2)}

  let(:player1) { double(:player, :name => 'readgar', :attacked => true) }
  let(:player2) { double(:player, :name => 'tyrion') }

  describe '#attacked' do
    it 'triggers attack on player' do
      expect(subject.attack(player1)).to eq true
    end
  end

end
