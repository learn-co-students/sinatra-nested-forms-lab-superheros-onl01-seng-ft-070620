require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(params[:team][:name], params[:team][:motto])
        @hero_1 = Hero.new(params[:heroes][0][:name], params[:heroes][0][:power], params[:heroes][0][:bio], @team)
        @hero_2 = Hero.new(params[:heroes][1][:name], params[:heroes][1][:power], params[:heroes][1][:bio], @team)
        @hero_3 = Hero.new(params[:heroes][2][:name], params[:heroes][2][:power], params[:heroes][2][:bio], @team)
        erb :team
    end


end
