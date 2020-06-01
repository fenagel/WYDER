class University < ApplicationRecord
  has_many :programs,
  belongs_to :user
end
