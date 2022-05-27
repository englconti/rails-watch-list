class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks

  # detroy child saved movies when destroying self
  has_many :movies, through: :bookmarks, dependent: :destroy
end
