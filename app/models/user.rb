require 'bcrypt'

class User < ApplicationRecord
  has_many :trips
  has_many :user_trips
  has_many :comments

  validates :first_name, length: { minimum: 4 }, presence: true
  validates :last_name, length: { minimum: 4 }, presence: true
  validates :username, uniqueness: true, length: { minimum: 6, maximum: 14 }
  validates :password, length: { minimum: 6, maximum: 14, allow_nil: true }
  validates :password_digest, presence: true
  validates :session_token, presence: true, uniqueness: true

  after_initiaize :ensure_session_token!

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    @password = password 
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.save!
    self.session_token
  end

  def trips_lead
    UserTrips.where(user_id: self.id)
  end

  private

  def ensure_session_token! 
    self.session_token || SecureRandom.base64(64)
  end

end
