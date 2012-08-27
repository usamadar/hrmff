class AddRelatedToEmployees < ActiveRecord::Migration
  def up
  	add_column :employees, :employee_id, :integer
  	execute <<-SQL
  		ALTER TABLE employees ADD CONSTRAINT fk_employee_id
  		FOREIGN KEY (employee_id)
  		REFERENCES employees(id)
  	SQL
  end
  def down
  	remove_column :employees, :employee_id
  end
end
