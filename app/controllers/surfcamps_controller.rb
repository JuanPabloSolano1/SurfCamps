class SurfcampsController < ApplicationController
  def index
    @continent = Continent.find(params[:continent_id])
    @location = Location.find(params[:location_id])
    @surfcamps = Surfcamp.where(location_id: @location.id)
  end

  def show
    @surfcamp = Surfcamp.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
   @continent = Continent.find(params[:continent_id])
   @location = Location.find(params[:location_id])
   @surfcamp = Surfcamp.new
  end

  def create
    @continent = Continent.find(params[:continent_id])
    @location = Location.find(params[:location_id])
    @surfcamp = Surfcamp.new(review_params)
    @surfcamp.location = @location
    @surfcamp.save
    redirect_to continent_location_surfcamps_path(@continent,@location)
  end

  def review_params
    params.require(:surfcamp).permit(:name,:stars,:price,:photo,:address)
  end
end

