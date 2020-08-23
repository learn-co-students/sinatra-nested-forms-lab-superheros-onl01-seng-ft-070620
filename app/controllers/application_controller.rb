require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |member_details|
            SuperHeroes.new(member_details)
        end

        @heroes = SuperHeroes.all

        erb :team
    end
end
