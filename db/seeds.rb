# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

puts "Creating database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "7513200000", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "7513204000", category: "italian"}
pizza_south =  {name: "Pizza South", address: "1A Shoreditch High St, London E1 6PQ", phone_number: "7513209000", category: "italian"}
pizza_west =  {name: "Pizza West", address: "6A Shoreditch High St, London E1 6PQ", phone_number: "7513204050", category: "japanese"}
pizza_north =  {name: "Pizza North", address: "5A Shoreditch High St, London E1 6PQ", phone_number: "7513204020", category: "french"}

[dishoom, pizza_east, pizza_south, pizza_west, pizza_north].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#   end
