class LanguagesController < ApplicationController

  before_action :set_language_school

  def index
  end

  def show
  end

  private
  def set_language_school
    @schools = School.order("created_at ASC")
    @language = Language.find(params[:id])
  end

end
