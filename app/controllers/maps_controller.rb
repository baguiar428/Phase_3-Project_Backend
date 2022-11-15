class MapsController < ApplicationController

    get '/maps' do
        maps = Map.all
        maps.to_json
    end

    get '/maps/:id' do
        map = Map.find(params[:id])
        map.to_json
    end

    # patch '/maps/:id' do
    #     defeated 
end