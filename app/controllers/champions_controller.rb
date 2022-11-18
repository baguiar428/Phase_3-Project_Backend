class ChampionsController < ApplicationController

    get '/champions' do
        champions = Champion.all.order(:wins).reverse
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