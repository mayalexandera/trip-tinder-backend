# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_13_025402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.datetime "date"
    t.string "title", null: false
    t.bigint "user_id", null: false
    t.bigint "park_id", null: false
    t.bigint "trip_id", null: false
    t.text "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_comments_on_park_id"
    t.index ["trip_id"], name: "index_comments_on_trip_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "park_trips", force: :cascade do |t|
    t.bigint "trip_id"
    t.bigint "park_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_trips_on_park_id"
    t.index ["trip_id"], name: "index_park_trips_on_trip_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name", null: false
    t.string "state", null: false
    t.integer "rating"
    t.string "park_code", null: false
    t.string "address", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "state"], name: "index_parks_on_name_and_state", unique: true
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "state", null: false
    t.text "description", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.bigint "park_id", null: false
    t.bigint "user_id"
    t.integer "difficulty_rating", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_trips_on_park_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "user_trips", force: :cascade do |t|
    t.bigint "trips_id"
    t.bigint "users_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trips_id"], name: "index_user_trips_on_trips_id"
    t.index ["users_id"], name: "index_user_trips_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "username"
    t.string "password_digest"
    t.text "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "park_trips", "parks"
  add_foreign_key "park_trips", "trips"
  add_foreign_key "trips", "users"
  add_foreign_key "user_trips", "trips", column: "trips_id"
  add_foreign_key "user_trips", "users", column: "users_id"
end
