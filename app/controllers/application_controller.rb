require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end 

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |member_details|
            Hero.new(member_details)
        end

        @heroes = Hero.all

        erb :show
    end 


end