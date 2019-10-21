require 'gossip'

class ApplicationController < Sinatra::Base
    # Création le route pour le GET de index
    get '/' do
        erb :index, locals: {gossips: Gossip.all}
    end
    # Créer le route pour le GET de /gossips/new/
    get '/gossips/new/' do
        erb :new_gossip
    end
    # créer un Gossip et l'ajouter en base de données.
    post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
    end
    # Création Url dynamique
    get '/gossips/:id/' do
    x = Gossip.find(params[:id])
        erb :show, locals: {gossip: x}
    end 
end
