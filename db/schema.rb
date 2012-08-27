# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120826200954) do

  create_table "airlines", :force => true do |t|
    t.string   "name",                          :null => false
    t.string   "code",                          :null => false
    t.text     "description",                   :null => false
    t.boolean  "enabled",     :default => true, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "app_roles", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "title",                                    :null => false
    t.string   "first_name",                               :null => false
    t.string   "last_name",                                :null => false
    t.date     "dob",                                      :null => false
    t.string   "passport_number",                          :null => false
    t.date     "passport_issue_date",                      :null => false
    t.date     "passport_expiry_date",                     :null => false
    t.string   "passport_issue_country",                   :null => false
    t.string   "email",                                    :null => false
    t.string   "mobile",                                   :null => false
    t.string   "home_phone",                               :null => false
    t.string   "office_phone",                             :null => false
    t.string   "gender",                                   :null => false
    t.string   "nationality",                              :null => false
    t.string   "address",                                  :null => false
    t.string   "zip",                                      :null => false
    t.string   "country",                                  :null => false
    t.string   "external_id",                              :null => false
    t.integer  "airline_id",                               :null => false
    t.integer  "role_id",                                  :null => false
    t.integer  "relation_id",                              :null => false
    t.boolean  "enabled",                :default => true, :null => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.integer  "employee_id"
  end

  add_index "employees", ["airline_id"], :name => "fk_airline_employee"
  add_index "employees", ["employee_id"], :name => "fk_employee_id"
  add_index "employees", ["relation_id"], :name => "fk_relation_employee"
  add_index "employees", ["role_id"], :name => "fk_role_employee"

  create_table "relations", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "code",       :null => false
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",                              :null => false
    t.string   "email",                             :null => false
    t.string   "password_digest",                   :null => false
    t.integer  "app_role_id"
    t.boolean  "enabled",         :default => true, :null => false
    t.integer  "airline_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["airline_id"], :name => "fk_airlines"
  add_index "users", ["app_role_id"], :name => "fk_app_role"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
