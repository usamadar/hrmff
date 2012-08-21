class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :code, :null => false
      t.string :name, :null => false

      t.timestamps
    end
  end
end
