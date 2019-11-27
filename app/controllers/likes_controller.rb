class LikesController < ApplicationController
    before_action :set_variables

  def like
    like = current_user.likes.new(review_id: @review.id)
    if like.save
      respond_to do |format|
        format.html
        format.json
      end
    else
      flash.now[:alert] = 'エラーが発生しました。'
    end
  end

  def unlike
    like = current_user.likes.find_by(review_id: @review.id)
    like.destroy
  end

  private

  def set_variables
    @review = Review.find(params[:review_id])
    @id_name = "#like-link-#{@review.id}"
  end
end
