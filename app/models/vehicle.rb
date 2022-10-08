class Vehicle < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
end
