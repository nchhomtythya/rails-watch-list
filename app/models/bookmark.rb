class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validate
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
end
