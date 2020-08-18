class Trip < ApplicationRecord
  belongs_to :trip_lead, class_name: 'User'
  belongs_to :park
  has_many :user_trips
  has_many :trip_goers, through: :user_trips, source: :trip

  validates :name, length: { minimum: 4 }, presence: true
  validates :start_date, :end_date, :trip_lead, :park_id, :description, :state, presence: true
  validates :difficulty_rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10}

  def self.searchable(word)
    Trip.all.map{ |trip| trip.word == word }
  end

  def trip_goers
    UserTrip.where(trip_id: self.id)
  end

  def add_trip_goer(user)
    self.trip_goers.push(user)
  end

end
