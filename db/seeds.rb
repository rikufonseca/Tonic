# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeds start..."
puts ""

puts "destroy datas"
User.destroy_all if Rails.env.development?
puts "Datas destroyed"
puts ""

puts "creating users..."
User.create!(
  email: "fonsecarika@gmail.com", password: "1234567890!6", admin: true
)
puts "Boss created"

User.create!(
  email: "loris.reynauda@gmail.com", password: "azerty", admin: true
)
puts "Loris created"
puts ""

puts "Seeds successfully finished !"
