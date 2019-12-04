class School < ApplicationRecord
  has_many :school_languages
  has_many :languages, through: :school_languages
  has_many :school_locations
  has_many :locations, through: :school_locations
  has_many :reviews

  def review_average
    if reviews.present?
      reviews.average(:rate).round(2)
    else
      puts "まだreviewが投稿されていません"
    end
  end
end