class Airline < ActiveRecord::Base
  attr_accessible :code, :description, :enabled, :name
  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :enabled, presence: true
  validates :name , presence: true
end
