class SongsController < ApplicationController

    get '/songs' do
        @songs = Song.all 
        erb :'/songs/index'
    end
  
    get '/songs/:id' do
      erb :songs
    end

    # post '/songs' do
    #     @song = Song.create(:name => params["Name"])
    #     @song.artist = Artist.find_or_create_by(:name => params["Artist Name"])
    #     @song.genre_ids = params[:genres]
    #     @song.save
    #     erb :"/songs/show", locals: {message: "Successfully created song."}
    # end



    





end