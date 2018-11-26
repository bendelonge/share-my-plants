class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :starting_date, presence: true
  validates :ending_date, presence: true
  validates :status, inclusion: { in: %w(pending approved denied) }

end
