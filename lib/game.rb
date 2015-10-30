class Game

  attr_reader :player_one, :player_two, :attacking_player

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @attacking_player = 1
  end

  def attack
    @attacking_player == 1 ? @player_two.attacked : @player_one.attacked
    switcher
  end

  private

  def switcher
    if @attacking_player == 1 ? @attacking_player = 2 : @attacking_player = 1
    end
  end

end
