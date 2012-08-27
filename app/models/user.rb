class User < ActiveRecord::Base

  belongs_to :airline
  belongs_to :app_role

  attr_accessible :airline_id, :email, :enabled, :name, :password, :password_confirmation, :app_role_id
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  validates :name, presence: true
  validates :airline_id, presence: true
  validates :enabled, presence: true
  validates :password, presence: true, :confirmation => true, :if => lambda{ new_record? }
  validates :app_role_id, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: { case_sensitive: false }
end
