class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, threw: :bookmarks
  validates :name, presence: true, uniqueness: true
end
