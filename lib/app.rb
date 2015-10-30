require 'sinatra/base'
require_relative 'player'
require_relative 'game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    $battle_game = Game.new(player_one, player_two)
    # @turn = 0
    redirect ('/play')
  end

  get '/play' do
    # @turn += 1
    @player_one_name = $battle_game.player_one.name
    @player_two_name = $battle_game.player_two.name
    @player_one_hitpoints = $battle_game.player_one.hit_points
    @player_two_hitpoints = $battle_game.player_two.hit_points
    @attacking_player = $battle_game.attacking_player
    erb(:play)
  end

  post '/attack' do
    $battle_game.attack
    redirect ('/play')
  end

  run! if app_file == $0
end
