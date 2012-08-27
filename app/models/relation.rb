class Relation < ActiveRecord::Base
	has_many :employees
  	attr_accessible :description, :name
  	validates :name, presence: true
end
