class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  before_destroy :bookmark?

  private

  def booking_with_payments?
    errors.add(:base, "Cannot delete booking with payments") unless booking_payments.count == 0
    errors.blank? #return false, to not destroy the element, otherwise, it will delete.
  end
end
