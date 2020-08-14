class Trip < ApplicationRecord
  belongs_to :trip_lead, class_name: 'User'
  belongs_to :park
  has_many :trip_goers, class_name: 'User'

  validates :name, length: { minimum: 4 }, presence: true
  validates :start_date, :end_date, :trip_lead_id, :park_id, :description, :state, presence: true
  validates :difficulty_rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10}

end
