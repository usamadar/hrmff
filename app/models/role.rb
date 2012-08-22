class Role < ActiveRecord::Base
  attr_accessible :code, :name

  before_save { |role| role.code = code.upcase }

  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
end
