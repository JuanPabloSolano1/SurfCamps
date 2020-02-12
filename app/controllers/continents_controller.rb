class ContinentsController < ApplicationController
  def index
   @continents = Continent.all
   @surfcamps =  Surfcamp.geocoded

    @markers = @surfcamps.map do |surfcamp|
      {
        lat: surfcamp.latitude,
        lng: surfcamp.longitude
      }
    end
  end
  def show

  end

   def create
    @continent = Continent.new(review_params)
    @continent.save
    redirect_to continents_path
  end

  def new

  @continent = Continent.new
  end

  def review_params
    params.require(:continent).permit(:name,:description,:photo)
  end
end
