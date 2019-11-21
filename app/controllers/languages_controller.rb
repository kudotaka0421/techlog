class LanguagesController < ApplicationController
  def index
    @schools = School.order("id ASC").limit(3)
    @language = Language.find(params[:id])
  end

  def show
    @schools = School.order("id ASC").limit(3)
    @language = Language.find(params[:id])
  end
end
