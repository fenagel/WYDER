class Subject < ApplicationRecord
  has_many :programs
  has_many :university_subjects
  has_many :universities, through: :university_subjects
end
