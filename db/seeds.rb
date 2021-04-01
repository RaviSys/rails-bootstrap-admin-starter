# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'admin@example.com', password: 'password', role: 'admin', first_name: 'Admin', last_name: 'User')
user2 = User.create(email: 'guest@example.com', password: 'password', role: 'guest', first_name: 'Guest', last_name: 'User')
