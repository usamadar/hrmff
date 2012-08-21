class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :name, :null=> false
      t.text :description

      t.timestamps
    end
  end
end
