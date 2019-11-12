class SchoolLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :school
end
