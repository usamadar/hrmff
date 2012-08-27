class Airline < ActiveRecord::Base
  has_many :users
  has_many :employees
  
  attr_accessible :code, :description, :enabled, :name
  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :enabled, presence: true
  validates :name , presence: true
end
