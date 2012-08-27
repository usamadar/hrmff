class AddFkToUsers < ActiveRecord::Migration
  def up
    rename_column :users, :role, :app_role_id
    rename_column :users, :airline, :airline_id
    execute <<-SQL
       ALTER TABLE users ADD CONSTRAINT fk_app_role
       FOREIGN KEY(app_role_id)
       REFERENCES app_roles(id) 
    SQL
    execute <<-SQL
       ALTER TABLE users ADD CONSTRAINT fk_airlines
       FOREIGN KEY(airline_id)
       REFERENCES airlines(id)
    SQL
  end
  def down
    rename_column :users, :app_role_id, :role
    rename_column :users, :airline, :airline_id    
  end
end
