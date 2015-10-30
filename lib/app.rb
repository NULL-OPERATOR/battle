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
    $game = Game.new(player_one, player_two)
    # @turn = 0
    redirect :play
  end

  get '/play' do
    # @turn += 1
    @player_one_name = $game.p1_name
    @player_two_name = $game.p2_name
    @player_one_hitpoints = $game.p1_hp
    @player_two_hitpoints = $game.p2_hp
    @attacking_player = $game.attacking_player
    erb(:play)
  end

  post '/attack' do
    $game.attack
    $game.end? ? redirect(:end) : redirect(:play)
  end

  get '/end' do
    erb :end
  end

  run! if app_file == $0
end
