class User < ActiveRecord::Base
  attr_accessible :airline, :email, :enabled, :name, :password, :role
end
