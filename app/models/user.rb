require 'bcrypt'

class User < ApplicationRecord
  has_secure_password

  has_many :trips, through: :user_trips
  has_many :comments

  validates :first_name, length: { minimum: 2 }, presence: true
  validates :last_name, length: { minimum: 2 }, presence: true
  validates :username, uniqueness: true, length: { minimum: 6, maximum: 14 }
  validates :password_digest, presence: true
  validates :remember, default: false

  def trips_lead
    UserTrips.where(user_id: self.id)
  end
end
