class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :title, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.date :dob, :null => false
      t.string :passport_number, :null => false
      t.date :passport_issue_date, :null => false
      t.date :passport_expiry_date, :null => false
      t.string :passport_issue_country, :null => false
      t.string :email, :null => false
      t.string :mobile, :null => false
      t.string :home_phone, :null => false
      t.string :office_phone, :null => false
      t.string :gender, :null => false
      t.string :nationality, :null => false
      t.string :address, :null => false
      t.string :zip, :null => false
      t.string :country, :null => false
      t.string :external_id, :null => false
      t.string :airline, :null => false
      t.string :role, :null => false
      t.string :relationship, :null => false, :default => 'self'
      t.boolean :enabled, :null => false, :default => true

      t.timestamps
    end
  end
end
