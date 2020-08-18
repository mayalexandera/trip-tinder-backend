class ParkTrip < ApplicationRecord
  belongs_to :park
  belongs_to :trip
end
