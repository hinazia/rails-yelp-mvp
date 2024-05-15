# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

taste_my_burger = {name: "Taste My Burger", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
grill_house = {name: "Grill House", address: "7 Boundary St, London E2 7JE", category: "italian"}
taste_my_burger_a = {name: "Taste My Burger 2", address: "7 Boundary St, London E2 7JE", category: "japanese"}
taste_my_burger_b = {name: "Taste My Burger 3", address: "7 Boundary St, London E2 7JE", category: "french"}

[taste_my_burger, pizza_east, grill_house, taste_my_burger_a, taste_my_burger_b].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
