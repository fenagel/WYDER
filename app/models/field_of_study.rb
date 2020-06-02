class FieldOfStudy < ApplicationRecord
  has_many :programs
  has_many :universities, through: :university_subjects
end
