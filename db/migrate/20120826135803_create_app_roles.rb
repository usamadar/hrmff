class CreateAppRoles < ActiveRecord::Migration
  def change
    create_table :app_roles do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
