class Program < ApplicationRecord
  belongs_to :university
  belongs_to :subject
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks

  enum degree: { MSc: 0, BSc: 1, MA: 2, BA: 3, MLitt: 4, BLitt: 5 }

  DEGREES = ["MSc", "BSc", "MA", "BA", "MLitt", "BLitt"]
end
