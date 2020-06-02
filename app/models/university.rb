class University < ApplicationRecord
  has_many :programs
  has_many :users
  has_many :university_subjects
  has_many :subjects, through: :university_subjects

  enum kind: { privately_owned: 1, publicly_owned: 0 }
end
