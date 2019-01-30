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

ActiveRecord::Schema.define(version: 2019_01_29_225106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.bigint "secomp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secomp_id"], name: "index_events_on_secomp_id"
  end

  create_table "secomps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "institution"
    t.string "course"
    t.string "registration"
    t.string "phone"
    t.bigint "secomp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secomp_id"], name: "index_students_on_secomp_id"
  end

  create_table "students_events", id: false, force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_students_events_on_event_id"
    t.index ["student_id"], name: "index_students_events_on_student_id"
  end

  add_foreign_key "events", "secomps"
  add_foreign_key "students", "secomps"
end
