require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "Dev"

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect ('/play')
  end

  get '/play' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb(:play)
  end

  post '/attack' do
    $attack = params[:attack]
    redirect ('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
