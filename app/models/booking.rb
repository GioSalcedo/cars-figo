class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :vehicles
  validates_presence_of :start_date, :end_date, :user_id, :vehicle_id
  validates_uniqueness_of :vehicle_id, scope: [:start_date, :end_date]
end
