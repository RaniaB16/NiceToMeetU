# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Profil.destroy_all

Eva = User.create(
  first_name: "Eva",
  last_name: "LABAS",
  email: "eva@gmail.com",
  password: "123456"
)

Karima = User.create(
  first_name: "Karima",
  last_name: "DENT",
  email: "karima@gmail.com",
  password: "123456"
)

Joe = User.create(
  first_name: "Joe",
  last_name: "SUIT",
  email: "joe@gmail.com",
  password: "123456"
)
Nadir = User.create(
  first_name: "Nadir",
  last_name: "RIDAN",
  email: "nadir@gmail.com",
  password: "123456"
)

Aurelie = User.create(
  first_name: "Aurélie",
  last_name: "UNLIV",
  email: "aurelie@gmail.com",
  password: "123456"
)
puts "Users created"

puts "Creating Profils..."

Profil.create(
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Eva.id
)

Profil.create(
  actual_job: "Acountant",
  company: "SNCF",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Karima.id
)

Profil.create(
  actual_job: "Lawyer",
  company: "Suits Corp",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Joe.id
)

Profil.create(
  actual_job: "Postman",
  company: "La Poste",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Nadir.id
)

Profil.create(
  actual_job: "Teacher",
  company: "Georges Brassens Highschool",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Aurelie.id
)
