class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates_presence_of :s_date, :f_date, :user_id, :vehicle_id
  validates_uniqueness_of :vehicle_id, scope: [:s_date, :f_date]
end
