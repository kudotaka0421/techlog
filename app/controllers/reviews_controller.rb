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
    @review = Review.create(review_params)
    if @review.save
      redirect_to school_path(@school), notice: 'レビューが送信されました'
    else
      flash.now[:alert] = '入力内容に不備があります。'
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @school = School.find(params[:school_id])
  end

  def update
    @school = School.find(school_id: params[:school_id])
    @review = Review.find(params[:id])
    if @review.user_id == current_user.id
      @review.update(review_params)
      redirect_to school_path(@school), notice: "編集が完了しました"
    else
      flash.now[:alert] = '入力内容に不備があります。'
      render :new
    end
  end

  def destroy
  end


  private

  def review_params
    params.require(:review).permit(:rate, :content_good, :content_bad, :schoo_id)
    .merge(user_id: current_user.id)
  end

end



