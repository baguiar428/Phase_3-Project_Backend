class MapsController < ApplicationController

    get '/maps' do
        maps = Map.all
        maps.to_json(include: {monsters: {include: :rewards}})
    end

    get '/maps/:id' do
        map = Map.find(params[:id])
        map.to_json(include: {monsters: {include: :rewards}})
    end

    patch '/maps/:id' do
        map = Map.find(params[:id])
        map.update(played?: true)
    end

    # patch '/maps/:id' do
    #     defeated 
end