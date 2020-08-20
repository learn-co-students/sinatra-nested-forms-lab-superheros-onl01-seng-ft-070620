require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'super_hero'
    end

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |member|
            hero = Hero.new(member)
        end

        @hero_one = Hero.all[0]
        @hero_two = Hero.all[1]
        @hero_three = Hero.all[2]
        # binding.pry
        erb :'team'
    end
end
