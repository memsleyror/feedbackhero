# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#first seed file
#r = Role.create(role_name: "Admin")
u = User.create(first_name: "Mike", last_name: "Emsley", email: "mike.emsley@gmail.com", password:"insanity", password_confirmation:"insanity", role_id: 1)