class LocationsController < ApplicationController
  def index
   @locations = Location.all
  end

  def show
  end

  def new
   @location = Location.new
  end

  def create
   @location = Location.create(review_params)
   redirect_to(locations_path)
  end

  def edit

  end

  def update

  end

  def destroy

  end

    def review_params
    params.require(:location).permit(:name,:description)
  end
end
