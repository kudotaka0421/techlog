class Language < ApplicationRecord

  enum  name: {
    "Ruby":1, "PHP":2,"Python":3,"Java":4,"HTML / CSS":5,
  }


  has_many :school_languages
  has_many :schools,through: :school_languages
end
22