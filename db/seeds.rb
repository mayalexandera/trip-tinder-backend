


Trip.create!(
  name: Faker::Lorem.sentences(number: 1),
  park: Park.first,
  state: Park.first.state,
  description: Faker::Lorem.sentences(number: 3),
  start_date: Faker::Date.in_date_period(year: 2021, month: 6),
  end_date: Faker::Date.in_date_period(year: 2021, month: 7),
  trip_lead: User.first,
  difficulty_rating: 3
)


ParkTrip.create!(
  trip_id: Trip.first.id,
  park_id: Trip.first.park.id
)

10.times do User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username(specifier: 5..14), 
  password: Faker::Internet.password,
  bio: Faker::Lorem.paragraphs(number: 1),
  avatar: Faker::Avatar.image
)


end