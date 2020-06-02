class UniversitySubject < ApplicationRecord
  belongs_to :subject
  belongs_to :university
end
