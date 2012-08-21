class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null=>false
      t.string :email, :null=>false
      t.string :password, :null=>false
      t.integer :role, :null=>false
      t.boolean :enabled, :null=>false, :default => true
      t.integer :airline, :null=>false

      t.timestamps
    end
  end
end
