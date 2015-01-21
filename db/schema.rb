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

ActiveRecord::Schema.define(version: 20150121184124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "home_locations", force: :cascade do |t|
    t.integer "home_id",     null: false
    t.integer "location_id", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string  "name",                            null: false
    t.string  "move_in_month",                   null: false
    t.text    "description",                     null: false
    t.integer "rent_per_person",                 null: false
    t.integer "bedrooms",                        null: false
    t.boolean "cats",            default: false
    t.boolean "dogs",            default: false
  end

  create_table "interests", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string  "name",      null: false
    t.integer "area_code", null: false
  end

  add_index "locations", ["name", "area_code"], name: "index_locations_on_name_and_area_code", unique: true, using: :btree

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "interest_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "provider",                   null: false
    t.string   "uid",                        null: false
    t.string   "email"
    t.string   "birthday"
    t.string   "gender",                     null: false
    t.string   "image"
    t.string   "link",                       null: false
    t.boolean  "cats",       default: false
    t.boolean  "dogs",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "users", ["uid", "link"], name: "index_users_on_uid_and_link", unique: true, using: :btree

end
