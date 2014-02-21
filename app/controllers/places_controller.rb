class PlacesController < ApplicationController
 
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    
    redirect_to root_path
  end

end
