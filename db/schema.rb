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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131130060036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "group_type"
    t.string   "address_street"
    t.string   "address_zipcode"
    t.string   "address_state"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_tasks", force: true do |t|
    t.integer "group_id"
    t.integer "task_id"
  end

  create_table "groups_users", force: true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "priority"
    t.string   "category"
    t.integer  "cost"
    t.string   "start_location"
    t.string   "task_location"
    t.string   "end_location"
    t.integer  "estimated_time"
    t.integer  "total_time"
    t.datetime "due_date"
    t.boolean  "started"
    t.boolean  "completed"
    t.integer  "passes"
    t.integer  "karma_value"
    t.datetime "accepted_time"
    t.datetime "completed_time"
    t.integer  "group_id"
    t.integer  "creator_id"
    t.integer  "owner_id"
    t.integer  "flaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone_num"
    t.integer  "tot_karma"
    t.integer  "tot_flakes"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
