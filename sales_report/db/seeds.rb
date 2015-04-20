# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:"venkat.ideology@gmail.com", password: "password", password_confirmation: "password", first_name: "Raj", last_name: "Kiran")
User.create(email:"dinesh.ideology@gmail.com", password: "password", password_confirmation: "password", first_name: "Dinesh", last_name: "G")
User.create(email:"krishna.ideology@gmail.com", password: "password", password_confirmation: "password", first_name: "Krishna", last_name: "Varma")