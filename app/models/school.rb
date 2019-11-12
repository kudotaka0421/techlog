class School < ApplicationRecord
  has_many :school_languages
  has_many :languages, through: :school_languages
end
