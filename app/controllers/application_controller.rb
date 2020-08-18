require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team = Team.new(params)
        # binding.pry
        @members = params[:team][:members].map do |member_attrs|
            Hero.new(member_attrs)
        end

        erb :show_team
    end
end
