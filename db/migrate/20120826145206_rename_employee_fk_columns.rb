class RenameEmployeeFkColumns < ActiveRecord::Migration
  def up
  	rename_column :employees, :airline, :airline_id
  	rename_column :employees, :role, :role_id
  	rename_column :employees, :relationship , :relation_id
  end

  def down
  	rename_column :employees, :airline_id, :airline
  	rename_column :employees, :role_id, :role
  	rename_column :employees, :relation_id , :relationship
  end
end
