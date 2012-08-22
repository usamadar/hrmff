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

ActiveRecord::Schema.define(:version => 20120822091722) do

  create_table "airlines", :force => true do |t|
    t.string   "name",                          :null => false
    t.string   "code",                          :null => false
    t.text     "description",                   :null => false
    t.boolean  "enabled",     :default => true, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "title",                                      :null => false
    t.string   "first_name",                                 :null => false
    t.string   "last_name",                                  :null => false
    t.date     "dob",                                        :null => false
    t.string   "passport_number",                            :null => false
    t.date     "passport_issue_date",                        :null => false
    t.date     "passport_expiry_date",                       :null => false
    t.string   "passport_issue_country",                     :null => false
    t.string   "email",                                      :null => false
    t.string   "mobile",                                     :null => false
    t.string   "home_phone",                                 :null => false
    t.string   "office_phone",                               :null => false
    t.string   "gender",                                     :null => false
    t.string   "nationality",                                :null => false
    t.string   "address",                                    :null => false
    t.string   "zip",                                        :null => false
    t.string   "country",                                    :null => false
    t.string   "external_id",                                :null => false
    t.string   "airline",                                    :null => false
    t.string   "role",                                       :null => false
    t.string   "relationship",           :default => "self", :null => false
    t.boolean  "enabled",                :default => true,   :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

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
    t.integer  "role",                              :null => false
    t.boolean  "enabled",         :default => true, :null => false
    t.integer  "airline",                           :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
