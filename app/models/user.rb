class User < ActiveRecord::Base
  attr_accessible :airline, :email, :enabled, :name, :password, :password_confirmation, :role
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  validates :name, presence: true
  validates :airline, presence: true
  validates :enabled, presence: true
  validates :password, presence: true, length: { minimum: 6 }, :confirmation => true, :if => lambda{ new_record? }
  validates :role, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: { case_sensitive: false }
end
