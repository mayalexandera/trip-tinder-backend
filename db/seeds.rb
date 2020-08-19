


# Trip.create!(
#   name: Faker::Lorem.sentences(number: 1),
#   park: Park.first,
#   state: Park.first.state,
#   description: Faker::Lorem.sentences(number: 3),
#   start_date: Faker::Date.in_date_period(year: 2021, month: 6),
#   end_date: Faker::Date.in_date_period(year: 2021, month: 7),
#   trip_lead: User.first,
#   difficulty_rating: 3
# )

Trip.create!(
  name: "How about stopping to smell the roses??",
  park: Park.first,
  state: Park.first.state,
  description: "Getting tired of sitting in your small apartment? Join us on this fun-filled hiking adventure and meet like-minded people looking to unplug and unwind! There will be hiking and camping opportunities available!" ,
  start_date: Faker::Date.in_date_period(year: 2021, month: 6),
  end_date: Faker::Date.in_date_period(year: 2021, month: 7),
  trip_lead: User.first,
  difficulty_rating: 2
)

Trip.create!(
  name: "Serious outdoor enthusiasts only!",
  park: Park.second,
  state: Park.second.state,
  description: "This trip will be no joke! Serious mountain biking and whitewater rafting...and serious drinking by the campfire!" ,
  start_date: Faker::Date.in_date_period(year: 2021, month: 5),
  end_date: Faker::Date.in_date_period(year: 2021, month: 6),
  trip_lead: User.second,
  difficulty_rating: 4
)

Trip.create!(
  name: "Anyone want to do some rock climbing?",
  park: Park.third,
  state: Park.third.state,
  description: "Getting tired of sitting in your small apartment? Join us on this fun-filled hiking adventure and meet like-minded people looking to unplug and unwind! There will be hiking and camping opportunities available!" ,
  start_date: Faker::Date.in_date_period(year: 2021, month: 8),
  end_date: Faker::Date.in_date_period(year: 2021, month: 9),
  trip_lead: User.third,
  difficulty_rating: 5
)



ParkTrip.create!(
  trip_id: Trip.first.id,
  park_id: Trip.first.park.id
)

ParkTrip.create!(
  trip_id: Trip.second.id,
  park_id: Trip.second.park.id
)

ParkTrip.create!(
  trip_id: Trip.third.id,
  park_id: Trip.third.park.id
)




# 10.times do User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   username: Faker::Internet.username(specifier: 5..14), 
#   password: Faker::Internet.password,
#   bio: Faker::Lorem.paragraphs(number: 1),
#   avatar: Faker::Avatar.image
# )


# end

User.create!(
  first_name: "Tina",
  last_name: "TheCat",
  username: "CuteKitty",
  password: 12345,
  bio: "I am a cute, if slightly annoying cat, who surprisingly loves water. My favorite thing to do is go whitewater rafting. Also, I will put my butthole in your face.",
  avatar: "https://www.washingtonian.com/wp-content/uploads/2019/02/milada-vigerova-1295750-unsplash-2048x3072.jpg"
)



User.create!(
  first_name: "Korra",
  last_name: "TheAvatar",
  username: "Waterbender",
  password: 12345,
  bio: "I am the Avatar. I kind of have super powers. But I'm also super chill. I like extreme sports.",
  avatar: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Korra_%28Season_4%29_appearance.jpg/220px-Korra_%28Season_4%29_appearance.jpg"
)

User.create!(
  first_name: "Bette",
  last_name: "Porter",
  username: "Pantsuits",
  password: 12345,
  bio: "Don't mess with me. But I'm nice, really. I love the outdoors and the environment. I will hurt you if you don't believe in climate change.",
  avatar: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-jennifer-beals-1580006792.jpg"
)

User.create!(
  first_name: "Tom",
  last_name: "Hanks",
  username: "ForrestGump",
  password: 12345,
  bio: "Everyone loves me.",
  avatar: "https://www.biography.com/.image/t_share/MTE1ODA0OTcxNjUxNTk3ODM3/tom-hanks-9327661-1-402.jpg"
)

UserTrip.create!(
  trip_id: Trip.first.id,
  user_id: User.first.id 
)

UserTrip.create!(
  trip_id: Trip.second.id,
  user_id: User.second.id
)

UserTrip.create!(
  trip_id: Trip.third.id, 
  user_id: User.third.id
)