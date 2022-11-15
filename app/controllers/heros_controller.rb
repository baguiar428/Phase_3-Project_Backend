class HerosController < ApplicationController

    get '/heros' do
        heros = Hero.all
        heros.to_json
    end

    post '/heros' do
        hero = Hero.create(
            name: params[:name],
            spec: params[:spec],
            health: params[:health],
            strength: params[:strength],
            agility: params[:agility],
            intellect: params[:intellect],
            wins: params[:wins],
            image_URL: params[:image_URL]
        )
        hero.to_json
    end

    patch '/heros/:id' do
        hero = Hero.find(params[:id])
        hero.update(
            health: params[:health],
            strength: params[:strength],
            agility: params[:agility],
            intellect: params[:intellect],
            wins: params[:wins]
        )
        hero.to_json
    end

    delete '/heros/:id' do
        hero = Hero.find(params[:id])
        hero.destroy
    end


end