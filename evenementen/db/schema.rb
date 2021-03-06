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

ActiveRecord::Schema.define(version: 20150225182159) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "startdate"
    t.datetime "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_people", id: false, force: :cascade do |t|
    t.integer "event_id"
    t.integer "person_id"
  end

  add_index "events_people", ["event_id", "person_id"], name: "index_events_people_on_event_id_and_person_id", unique: true
  add_index "events_people", ["event_id"], name: "index_events_people_on_event_id"
  add_index "events_people", ["person_id"], name: "index_events_people_on_person_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "person_id"
    t.text     "text"
    t.datetime "date"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["event_id"], name: "index_messages_on_event_id"
  add_index "messages", ["person_id"], name: "index_messages_on_person_id"

  create_table "people", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
