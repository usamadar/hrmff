class AddAvatarColumnsToEmployees < ActiveRecord::Migration
def self.up
    add_attachment :employees, :avatar
  end

  def self.down
    remove_attachment :employees, :avatar
  end
end
