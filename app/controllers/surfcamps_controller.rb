class SurfcampsController < ApplicationController
  def index
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
   @location = Location.find(params[:location_id])
   @surfcamp = Surfcamp.new
  end

  def create
    @surfcamp = Surfcamp.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @location = Location.find(params[:location_id])
    @surfcamp.location = @location
    @surfcamp.save
    redirect_to locations_path(@location)
  end

  def review_params
    params.require(:surfcamp).permit(:name,:stars,:price,:location_id)
  end
end

