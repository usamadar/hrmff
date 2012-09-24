class ChangeRoleIdToRoleName < ActiveRecord::Migration
  def up
  	  	execute <<-SQL
  		ALTER TABLE employees change role_id role_name text
  	SQL
  end

  def down
  end
end
