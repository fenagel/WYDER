class Program < ApplicationRecord
  belongs_to :university
  belongs_to :subject
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks

  enum degree: { msc: 0, bsc: 1, msa: 2, bsa: 3, msl: 4, bsl: 5 }
end
