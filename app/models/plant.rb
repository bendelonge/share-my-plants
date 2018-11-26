class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :species, presence: true
  validates :city_location, presence: true
  validates :price_per_day, presence: true
end
