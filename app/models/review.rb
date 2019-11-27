class Review < ApplicationRecord
  belongs_to :school
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  validates :rate, :content_good, :content_bad, presence: true
  validates :rate,:numericality => {
    :less_than => 5,
  }
end
