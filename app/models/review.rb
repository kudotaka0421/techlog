class Review < ApplicationRecord
  belongs_to :school
  belongs_to :user
  validates :rate, :content_good, :content_bad, presence: true
end
