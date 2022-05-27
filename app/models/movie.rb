class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  has_many :bookmarks # default already restricts deletion
  has_many :lists, through: :bookmarks

  # should not be able to destroy self if has bookmarks children (FAILED - 1) ?????
  # before_destroy :check_for_bookmarks

  # private

  # def check_for_bookmarks
  #   if bookmarks.count > 0
  #     errors.add_to_base("cannot delete customer while bookmarks exist")
  #     return false
  #   end
  # end
end
