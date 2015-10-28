class Game

  def initialize (player1, player2)
    @player_one = player1
    @player_two = player2
  end

  def attack (player)
    player.attacked
  end

end
