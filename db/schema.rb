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

ActiveRecord::Schema.define(version: 20140901122314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daycare_centres", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waiting_lists", force: true do |t|
    t.string   "child_name"
    t.integer  "child_age"
    t.string   "parent_name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.string   "postcode"
    t.date     "expect_join_time"
    t.string   "days_per_week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
