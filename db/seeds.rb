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

Student.create!(name: 'student1', email:'1@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student2', email:'2@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student3', email:'3@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student4', email:'4@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student5', email:'5@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student6', email:'6@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student7', email:'7@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
Student.create!(name: 'student8', email:'8@mail.com', institution: 'UECE', course:'Computação', secomp_id: '1') if Rails.env.development?
