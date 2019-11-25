class SchoolsController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(5)
  end

  def show
    @review = Review.new
    @reviews = School.order("id ASC")
    @school = School.find(params[:id])
  end

end
