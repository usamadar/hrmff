class AddFkToEmployees < ActiveRecord::Migration
  def up
  	execute <<-SQL
  		ALTER TABLE employees modify column role_id int NOT NULL 
  	SQL
  	execute <<-SQL
  		ALTER TABLE employees modify column airline_id int NOT NULL 
  	SQL
  	execute <<-SQL
  		ALTER TABLE employees modify column relation_id int NOT NULL 
  	SQL
  	execute <<-SQL
  		ALTER TABLE employees ADD CONSTRAINT fk_role_employee
  		FOREIGN KEY(role_id)
  		REFERENCES roles(id)
  	SQL
  	execute <<-SQL
  		ALTER TABLE employees ADD CONSTRAINT fk_airline_employee
  		FOREIGN KEY(airline_id)
  		REFERENCES airlines(id)
  	SQL
  	execute <<-SQL
  		ALTER TABLE employees ADD CONSTRAINT fk_relation_employee
  		FOREIGN KEY (relation_id)
  		REFERENCES relations(id)
  	SQL
  end
end
