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

ActiveRecord::Schema.define(version: 2020_08_18_005935) do

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

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.text "weatherInfo"
    t.string "img_url"
    t.string "directionsUrl"
    t.index ["name", "state"], name: "index_parks_on_name_and_state", unique: true
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "state", null: false
    t.text "description", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.bigint "park_id", null: false
    t.bigint "trip_lead_id"
    t.integer "difficulty_rating", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_trips_on_park_id"
    t.index ["trip_lead_id"], name: "index_trips_on_trip_lead_id"
  end

  create_table "user_trips", force: :cascade do |t|
    t.bigint "trip_lead_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trip_id"
    t.index ["trip_id"], name: "index_user_trips_on_trip_id"
    t.index ["trip_lead_id"], name: "index_user_trips_on_trip_lead_id"
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
    t.string "roles"
  end

  add_foreign_key "park_trips", "parks"
  add_foreign_key "park_trips", "trips"
  add_foreign_key "trips", "users", column: "trip_lead_id"
  add_foreign_key "user_trips", "trips"
  add_foreign_key "user_trips", "users", column: "trip_lead_id"
end
