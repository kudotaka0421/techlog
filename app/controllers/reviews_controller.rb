class ReviewsController < ApplicationController

  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_school, except: [:index]

  def index
    @reviews = Review.order("id ASC")

  end

  def new
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to school_path(@school), notice: 'レビューが送信されました'
    else
      flash.now[:alert] = '入力内容に不備があります。'
      render :new
    end
  end

  def edit
  end

  def update
    if (@review.user_id == current_user.id or current_user.admin?) && @review.update(review_params)
      redirect_to school_path(@school), notice: "編集が完了しました"
    else
      flash.now[:alert] = '編集内容に不備があります'
      render :edit
    end
  end

  def destroy
    if (@review.user_id == current_user.id or current_user.admin?) && @review.destroy
      redirect_to school_path(@school), notice: "削除が完了しました"
    else
      flash.now[:alert] = '削除できませんでした'
      redirect_to school_path(@school)
    end
  end


  private

  def review_params
    params.require(:review).permit(:rate, :content_good, :content_bad, :school_id)
    .merge(school_id: params[:school_id],user_id: current_user.id)
  end

  def set_school
    @school = School.find(params[:school_id])
  end


  def set_review
    @review = Review.find(params[:id])
  end


end



