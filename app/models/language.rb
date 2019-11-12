class Language < ApplicationRecord
  has_many :school_languages
  has_many :schools through: :school_languages
end
