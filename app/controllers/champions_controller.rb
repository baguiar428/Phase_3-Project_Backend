class ChampionsController < ApplicationController

    get '/champions' do
        champions = Champions.all
        champions.to_json
    end

    post '/champions/new' do
        champion = Champion.create(
            name: params[:name]
            spec: params[:spec]
            wins: params[:wins]
            image_URL: params[:image_URL]
            )
        champion.to_json    
    end

end