class Plant < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :location_changed?

  mount_uploader :main_picture, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :species, presence: true
  validates :city_location, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  def full_address
    return [self.address, self.city_location, self.country].compact.join(', ')
  end

  def location_changed?
    address_changed? || city_location_changed?  || country_changed?
    #will_save_change_to_city_location? || will_save_change_to_country?
  end


end
