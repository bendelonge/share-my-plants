class User < ApplicationRecord
  mount_uploader :profile_picture, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # as renter
  has_many :bookings

  # as owner
  has_many :plants
  has_many :received_bookings, through: :plants, source: :bookings
end
