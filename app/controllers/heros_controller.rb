class HerosController < ApplicationController

    get '/heros' do
        heros = Hero.all.order(:wins).reverse
        heros.to_json
    end

    get '/heros/:id' do
        heros = Hero.all(
            name: params[:name],
            spec: params[:spec],
            health: params[:health],
            strength: params[:strength],
            agility: params[:agility],
            intellect: params[:intellect],
            wins: params[:wins]           
        )
        hero.to_json
    end

    post '/heros' do
        hero = Hero.create(
            name: params[:name],
            spec: params[:spec],
            health: params[:health],
            strength: params[:strength],
            agility: params[:agility],
            intellect: params[:intellect],
            wins: params[:wins]           
        )
        hero.to_json
    end

    patch '/heros/:id' do
        hero = Hero.find(params[:id])
        hero.update(
            name: params[:name],
            spec: params[:spec],
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