class SongsController < ApplicationController

  # GET /songs
  def index
    render json: Song.all
  end

end