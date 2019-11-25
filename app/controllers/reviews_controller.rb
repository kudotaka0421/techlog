class ReviewsController < ApplicationController

  def index
    @review = Review.new
    @reviews = @school.reviews.includes(:user)
  end

  def new
    @review = Review.new
    @school = School.find(params[:school_id])
  end

  def create
    @school = School.find(params[:school_id])
    @review = Review.create(create_params)
    if @review.save
      redirect_to school_path(@school), notice: 'レビューが送信されました'
    else
      flash.now[:alert] = '入力内容に不備があります。'
      render :new
    end
  end

  def edit
    @school = School.find(params[:school_id])
    @review = Review.find(params[:id])
  end

  def destroy
  end


  private

  def create_params
    params.require(:review).permit(:rate, :content_good, :content_bad, :school_id)
    .merge(school_id: params[:school_id],user_id: current_user.id)
  end

end



