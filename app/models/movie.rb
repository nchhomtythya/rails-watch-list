class Movie < ApplicationRecord
  has_many :bookmarks


  # validation
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

end
