namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
  puts "Creating countries..."
  100.times do |i|
    Country.create(
      name: Faker::Address.country
    )
  end
  puts "Creating states..."
  100.times do |i|
    State.create(
      name: Faker::Address.state,
      country_id: Country.all.sample.id
    )
  end
  puts "Creating cities..."
  100.times do |i|
    City.create(
      name: Faker::Address.city,
      state_id: State.all.sample.id
    )
  end
  puts "Creating addresses..."
  100.times do |i|
    Address.create(
      postcode: Faker::Address.street_address,
      city_id: City.all.sample.id
    )
  end
end
end
