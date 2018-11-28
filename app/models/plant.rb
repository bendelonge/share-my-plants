class Plant < ApplicationRecord
  geocoded_by :city_location
  after_validation :geocode, if: :will_save_change_to_city_location?

  mount_uploader :main_picture, PhotoUploader
  belongs_to :user
  has_many :bookings

  validates :species, presence: true
  validates :city_location, presence: true
  validates :price_per_day, presence: true
end
