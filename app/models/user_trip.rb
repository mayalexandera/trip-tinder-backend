class UserTrip < ApplicationRecord
  belongs_to :trip_lead, class_name: 'User'
  belongs_to :trip

  validates :trip_lead_id, :trip_id, presence: true
end
