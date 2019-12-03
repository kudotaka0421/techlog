class SchoolsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def index
    @schools = School.order("id ASC")
  end

  def show
    @school = School.find(params[:id])
    @reviews = @school.reviews.includes(:user)
  end


end
