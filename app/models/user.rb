class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # mount_uploader :image_url, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :reviews
  has_many :likes, dependent: :destroy
  has_many :like_reviews, through: :likes, source: :review

  validates :nickname, :email, :password, presence: true
end