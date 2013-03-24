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

ActiveRecord::Schema.define(:version => 20130323150416) do

  create_table "badges", :force => true do |t|
    t.string   "badge_name"
    t.string   "badge_image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clientfeedbacks", :force => true do |t|
    t.string   "clientfirst_name"
    t.string   "clientlast_name"
    t.string   "client_email"
    t.integer  "user_id"
    t.boolean  "hide"
    t.text     "situation"
    t.text     "positive"
    t.text     "growth_area"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "request_body"
    t.boolean  "responded_to"
    t.date     "responded_date"
  end

  add_index "clientfeedbacks", ["user_id"], :name => "index_clientfeedbacks_on_user_id"

  create_table "feedbacks", :force => true do |t|
    t.integer  "from_user"
    t.integer  "user_id"
    t.boolean  "hide"
    t.text     "situation"
    t.text     "positive"
    t.text     "growth_area"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "feedbacks", ["user_id"], :name => "index_feedbacks_on_user_id"

  create_table "requestedfeedbacks", :force => true do |t|
    t.integer  "from_user"
    t.integer  "user_id"
    t.boolean  "hide"
    t.text     "situation"
    t.text     "positive"
    t.text     "growth_area"
    t.text     "request_body"
    t.boolean  "responded_to"
    t.date     "responded_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "requestedfeedbacks", ["user_id"], :name => "index_requestedfeedbacks_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_badges", :force => true do |t|
    t.integer  "badge_id"
    t.integer  "user_id"
    t.boolean  "hide"
    t.integer  "from_user"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_badges", ["badge_id"], :name => "index_user_badges_on_badge_id"
  add_index "user_badges", ["user_id"], :name => "index_user_badges_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_pic"
    t.integer  "role_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
