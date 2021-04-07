require 'sinatra/base'
#require_relative '.models/super_hero'
#require_relative '.models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:heroes].each do |details|
      SuperHero.new(details)
    end
    @heroes = SuperHero.all
    erb :team
    binding.pry
  end
end
