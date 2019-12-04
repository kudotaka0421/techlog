class LocationsController < ApplicationController

  before_action :set_location_school

  def index
  end

  def show
  end

  def set_location_school
    @schools = School.order("created_at ASC")
    @location = Location.find(params[:id])
  end

end
