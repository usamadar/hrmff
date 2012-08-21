class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :name, :null=>false
      t.string :code, :null=>false
      t.text :description, :null=>false
      t.boolean :enabled, :null=>false, :default => true

      t.timestamps
    end
  end
end
