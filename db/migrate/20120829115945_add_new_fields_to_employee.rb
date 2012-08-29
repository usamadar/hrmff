class AddNewFieldsToEmployee < ActiveRecord::Migration
  def up
  		add_column :employees,  :employment_number, :string
  		add_column :employees,  :employment_date, :date
  		add_column :employees,  :card_number, :string
  		add_column :employees, :card_expiry_date, :date
  end
  def down
  		remove_column :employees, :employment_number
  		remove_column :employees, :card_number
  		remove_column :employees, :employment_date
  		remove_column :employees, :card_expiry_date
  end
end
