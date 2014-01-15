require 'bundler'
Bundler.require
require_relative './lib/spacecat.rb'

module SpaceCats
  class App < Sinatra::Application
    set :database, "sqlite3:///spacecats.db"

    get '/' do
      haml :index
    end

    get '/spacecats' do
      @spacecats = SpaceCat.all
      haml :all
    end

    get '/spacecats/new' do
      @spacecat = SpaceCat.new
      haml :new
    end

    post '/spacecats' do
      @spacecat = SpaceCat.new(params[:spacecat])
      if @spacecat.save
        redirect "/spacecats/#{@spacecat.id}"
      else
        @message = "SpaceCat could not be saved."
        haml :error
      end
    end    

    get '/spacecats/:id' do
      @spacecat = SpaceCat.find(params[:id])
      haml :show
    end

    get '/spacecats/edit/:id' do
      @spacecat = SpaceCat.find(params[:id])
      haml :edit
    end

    put '/spacecats/:id' do
      @spacecat = SpaceCat.find(params[:id])
      if @spacecat.update(params[:spacecat])
        redirect "/spacecats/#{@spacecat.id}"
      else
        @message = "SpaceCat could not be saved."
        haml :error
      end
    end

    get '/spacecats/delete/:id' do
      @spacecat = SpaceCat.find(params[:id])
      haml :delete
    end

    delete '/spacecats/:id' do
      SpaceCat.find(params[:id]).destroy
      redirect '/spacecats'
    end

    helpers do
      def partial(partial)
        haml partial
      end
    end
  end
end