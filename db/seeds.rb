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
  email: "eva@gmail.com",
  password: "123456"
)

Karima = User.create(
  email: "karima@gmail.com",
  password: "123456"
)

Joe = User.create(
  email: "joe@gmail.com",
  password: "123456"
)
Nadir = User.create(
  email: "nadir@gmail.com",
  password: "123456"
)

Aurelie = User.create(
  email: "aurelie@gmail.com",
  password: "123456"
)
puts "Users created"

puts "Creating Profils..."

Profil.create(
  nickname: "Eva LABAS",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Eva.id
)

Profil.create(
  nickname: "Karima DENT",
  actual_job: "Acountant",
  company: "SNCF",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Karima.id
)

Profil.create(
  nickname: "Joe SUIT",
  actual_job: "Lawyer",
  company: "Suits Corp",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Joe.id
)

Profil.create(
  nickname: "Nadir RIDAN",
  actual_job: "Postman",
  company: "La Poste",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Nadir.id
)

Profil.create(
  nickname: "Aurélie Unliv",
  actual_job: "Teacher",
  company: "Georges Brassens Highschool",
  description: "I always wanted to become a developper",
  dream_job: "Fullstack Developer",
  user_id: Aurelie.id
)
