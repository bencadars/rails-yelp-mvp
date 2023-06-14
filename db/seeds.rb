# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning Database...."
Restaurant.destroy_all

puts "creating fake resto..."

  restaurants = [
    { name: "Mushroom", address: "7 Boundary St, London E2 7JE", category: "italian" },
    { name: "La Trattoria", address: "123 Main St, New York, NY 10001", category: "italian" },
    { name: "Sakura Sushi", address: "456 Elm St, Los Angeles, CA 90001", category: "japanese" },
    { name: "Le Petit Bistro", address: "789 Oak Ave, Paris", category: "french" },
    { name: "Belgian Delights", address: "321 Pine St, Brussels", category: "belgian" }
  ]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "created #{restaurant.name}. Yummy"
end

puts "finished"
