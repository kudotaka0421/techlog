class LocationsController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(3)
    @location = Location.find(params[:id])
  end

  def show
    @schools = School.order("id ASC").limit(3)
    @location = Location.find(params[:id])
  end

end
