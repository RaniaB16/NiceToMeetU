# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
  full_name: "Eva Labas",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "developer",
  user: Eva
)

Profil.create(
  full_name: "Eva Labas",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "developer",
  user: Karima
)

Profil.create(
  full_name: "Eva Labas",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "developer",
  user: Joe
)

Profil.create(
  full_name: "Eva Labas",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "developer",
  user: Nadir
)

Profil.create(
  full_name: "Eva Labas",
  actual_job: "photograph",
  company: "AllforOne&Co",
  description: "I always wanted to become a developper",
  dream_job: "developer",
  user: Aurelie
)
