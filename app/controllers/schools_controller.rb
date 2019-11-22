class SchoolsController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(3)
  end

  def show
    @school = School.find(params[:id])
  end

  def new
  @school = School.new
  end
end
