class Airline < ActiveRecord::Base
  attr_accessible :code, :description, :enabled, :name
end
