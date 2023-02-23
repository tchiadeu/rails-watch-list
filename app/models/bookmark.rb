class Bookmark < ApplicationRecord
  belongs_to :movie, uniqueness: true
  belongs_to :list, uniqueness: true
  validates :comment, length: { minimum: 6 }
end
