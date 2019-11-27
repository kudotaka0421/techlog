class SchoolsController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(5)
  end

  def show
    @school = School.find(params[:id])
    @reviews = @school.reviews.includes(:user)

  end

end
