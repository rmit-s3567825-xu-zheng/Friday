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

ActiveRecord::Schema.define(version: 20160508073527) do

  create_table "properties", force: :cascade do |t|
    t.string   "name",                  limit: 50,  null: false
    t.integer  "user_id",               limit: 4,   null: false
    t.string   "address",               limit: 255, null: false
    t.string   "city",                  limit: 255, null: false
    t.string   "country",               limit: 255, null: false
    t.integer  "num_rooms",             limit: 4,   null: false
    t.boolean  "ac_available"
    t.boolean  "pool_available"
    t.integer  "num_points",            limit: 4,   null: false
    t.float    "discount",              limit: 53,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name",       limit: 255
    t.string   "photo_content_type",    limit: 255
    t.integer  "photo_file_size",       limit: 4
    t.datetime "photo_updated_at"
    t.string   "combined_city_country", limit: 255
    t.float    "longitude",             limit: 24
    t.float    "latitude",              limit: 24
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 50,                  null: false
    t.string   "first_name",      limit: 30,                  null: false
    t.string   "last_name",       limit: 30,                  null: false
    t.string   "email",           limit: 255,                 null: false
    t.string   "city",            limit: 255,                 null: false
    t.string   "country",         limit: 255,                 null: false
    t.string   "address",         limit: 255,                 null: false
    t.string   "phone",           limit: 255,                 null: false
    t.integer  "points",          limit: 4,   default: 600,   null: false
    t.boolean  "request_status",              default: false, null: false
    t.boolean  "booking_status",              default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", limit: 255
  end

end
