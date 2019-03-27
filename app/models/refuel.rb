class Refuel < ApplicationRecord
  validates :date, presence: true
  validates :driver, presence: true
  validates :vehicle, presence: true
  validates :odometer_reading, presence: true
  validates :refuel_location, presence: true
  validates :fuel_litters, presence: true
end