class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }

  # it verifies inside all lists for unique movie_id's
  validates_uniqueness_of :movie_id, scope: :list_id
  # same as below:
  # validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
