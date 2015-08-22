class PhotosController < ApplicationController
  def index 
    @album = Album.find(params[:album_id])
  end 
end
