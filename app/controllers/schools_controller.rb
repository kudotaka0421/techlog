class SchoolsController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(20)
  end

  def show
    @school = School.find(params[:id])
  end

end
