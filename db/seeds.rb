# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
User.destroy_all

jim = User.create(username: "Jim", password: "123")
bob = User.create(username: "Bob", password: "123")

Game.create(name: 'the one game in our seedfile', whiteplayer_id: jim.id, blackplayer_id: bob.id, fen: 'none', pgn: 'none', started: false)
Game.create(name: 'the two game in our seedfile', whiteplayer_id: bob.id, blackplayer_id: jim.id, fen: 'none', pgn: 'none', started: false)

p "seed done"