class ChampionsController < ApplicationController

    get '/champions' do
        champions = Champion.all
        champions.to_json
    end

    post '/champions' do
        champion = Champion.create(
            name: params[:name],
            spec: params[:spec],
            wins: params[:wins]
        )
        champion.to_json    
    end

end