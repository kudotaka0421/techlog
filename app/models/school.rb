class School < ApplicationRecord
  has_many :school_languages
  has_many :languages, through: :school_languages
  has_many :school_locations
  has_many :locations, through: :school_locations
end
