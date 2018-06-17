10.times do |index|
  user1 = User.new(name: Faker::FunnyName.name, username: Faker::Internet.user_name, email: Faker::FunnyName.name)
  user2 = User.new(name: Faker::FunnyName.name, username: Faker::Internet.user_name, email: Faker::FunnyName.name)
  restaurant = Restaurant.new(
    user: user1,
    name: Faker::LordOfTheRings.location,
    description: Faker::NewGirl.quote,
    address: Faker::Address.full_address,
    lat: Faker::Address.latitude,
    lng: Faker::Address.longitude,
  )
  Review.new(
    restaurant: restaurant,
    user: user2,
    title: Faker::OnePiece.quote,
    body: Faker::FamilyGuy.quote
  )
end
