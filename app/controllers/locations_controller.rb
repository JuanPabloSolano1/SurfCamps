class LocationsController < ApplicationController
  def index
   @continent = Continent.find(params[:continent_id])
   @locations = Location.where(continent_id: @continent.id)
   # @locations = Location.geocoded

   #  @markers = @locations.map do |location|
   #    {
   #      lat: location.latitude,
   #      lng: location.longitude
   #    }
  end

  def show
    @continent = Continent.find(params[:continent_id])
    @locations = Location.where(continent_id: @continent.id)
    # Another way of filtering results
    # @surfcamps = Surfcamp.where(location_id: @location.id)
  end

  def new
   @continent = Continent.find(params[:continent_id])
   @location = Location.new
  end

  def create
   @continent = Continent.find(params[:continent_id])
   @location = Location.new(review_params)
   @location.continent = @continent
   @location.save
   redirect_to(continents_path)
  end

  def edit

  end

  def update
  @location = Location.find(params[:id])
  @location.update(review_params)
  end

  def destroy

  end

  def review_params
    params.require(:location).permit(:name,:description,:photo,:address)
  end
end
