class University < ApplicationRecord
  has_many :programs
  belongs_to :user
  has_many :field_of_studies, through: :university_subjects
end
