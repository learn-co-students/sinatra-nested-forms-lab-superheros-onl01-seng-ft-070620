require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @teams = params[:team]
        @heroes = params[:team][:hero].map do |hero|
            Hero.new(hero)
        end

        erb :team
    end


end
