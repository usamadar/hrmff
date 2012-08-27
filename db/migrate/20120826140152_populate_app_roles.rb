class PopulateAppRoles < ActiveRecord::Migration
  def up
    execute <<-SQL
        insert into app_roles(code, description) values("APP_ADMIN", "Application Administrator")
    SQL
    execute <<-SQL
        insert into app_roles(code, description) values("AIRLINE_ADMIN", "Airline Administrator")
    SQL
  end

  def down
      execute <<-SQL
        delete from app_roles  
    SQL
  end
end
