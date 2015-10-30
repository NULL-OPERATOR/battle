class Game

  attr_reader :attacking_player, :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @attacking_player = 1
  end

  def attack
    @attacking_player == 1 ? @player_two.attacked : @player_one.attacked
    switcher
  end

  def end?
    (p1_hp == 0 || p2_hp == 0) ? true : false
  end

  def p1_hp
    @player_one.hit_points
  end

  def p2_hp
    @player_two.hit_points
  end

  def p1_name
    @player_one.name
  end

  def p2_name
    @player_two.name
  end

  private

  def switcher
    @attacking_player == 1 ? @attacking_player = 2 : @attacking_player = 1
  end


end
