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

ActiveRecord::Schema.define(version: 20150624011430) do

  create_table "hourly_forecasts", force: true do |t|
    t.text     "precip_probability"
    t.text     "temperature"
    t.text     "humidity"
    t.text     "wind_speed"
    t.text     "cloud_cover"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "migrations", force: true do |t|
    t.string   "add_readings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readings", force: true do |t|
    t.datetime "read_time"
    t.decimal  "temp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp_records", force: true do |t|
    t.text     "readings"
    t.integer  "highest"
    t.integer  "lowest"
    t.integer  "average"
    t.string   "record_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "utility_bills", force: true do |t|
    t.float    "total_used"
    t.integer  "month"
    t.float    "unit_price"
    t.integer  "days_in_cycle"
    t.float    "daily_price"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
