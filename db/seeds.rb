# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Secomp.create!(name: 'secomp2019') unless Secomp.find_by_name("secomp2019")

User.first_or_create!(email: 'admin@example.com', password:'password') if Rails.env.development?
User.first_or_create!(email: ENV["EMAIL_RECEIVE_PET"], password: ENV["EMAIL_PASSWORD_PET"]) if Rails.env.production?
