class Program < ApplicationRecord
  belongs_to :university
  belongs_to :field_of_study
  has_many :bookmarks, dependent: :destroy
end
