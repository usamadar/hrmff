class DropEMployeeRoleAssociation < ActiveRecord::Migration
  def up
  	execute <<-SQL
  		ALTER TABLE employees DROP KEY fk_role_employee
  	SQL
  end

  def down
  end
end
