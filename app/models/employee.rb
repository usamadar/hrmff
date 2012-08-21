class Employee < ActiveRecord::Base
  attr_accessible :address, :airline, :country, :dob, :email, :enabled, :external_id, :first_name, :gender, :home_phone, :last_name, :mobile, :nationality, :office_phone, :passport_expiry_date, :passport_issue_country, :passport_issue_date, :passport_number, :relationship, :role, :title, :zip
end
