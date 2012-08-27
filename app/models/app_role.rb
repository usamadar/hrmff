class AppRole < ActiveRecord::Base
  has_many :users
  
  attr_accessible :code, :description
end
