class Plant < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :main_picture, PhotoUploader
  belongs_to :user
  has_many :bookings

  validates :species, presence: true
  validates :city_location, presence: true
  validates :price_per_day, presence: true

  def full_address
    return [self.address, self.city_location, self.country].compact.join(', ')
  end
end
