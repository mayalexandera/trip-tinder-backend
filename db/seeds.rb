# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Faker::Avatar.image
#Faker::Date.forward(days: 23)
#
#Faker::Name.last_name
#Faker::Name.first_name
#Faker::Internet.username
#Faker::Internet.password
#Faker::Lorem.paragraphs(number: 1)
User.all.destroy!



10.times do User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username(specifier: 5..14), 
  password: Faker::Internet.password,
  bio: Faker::Lorem.paragraphs(number: 1),
  avatar: Faker::Avatar.image
)


 create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "state", null: false
    t.text "description", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.bigint "park_id", null: false
    t.bigint "trip_lead_id"
    t.integer "difficulty_rating", null: false

end