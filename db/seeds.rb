# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Bob', username: 'Bobby', email: 'bob@bobette.com', password: 'BobbyBoy')
User.create(name: 'Jim', username: 'Jimmy', email: 'jim@bobette.com', password: 'JimmyBoy')

Post.create(message: 'A test seed', user_id: '2')
Post.create(message: 'A test seed post', user_id: '2')
Post.create(message: 'A test seed post 2', user_id: '2')
