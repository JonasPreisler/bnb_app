class Reservation < ApplicationRecord
  belongs_to :guest
  enum status: [:declined, :accepted]
  # accepts_nested_attributes_for :guests
end
