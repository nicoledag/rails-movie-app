# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {username: 'Nicole', email: 'nicole@gmail.com', password: 'Movies123%'},
    {username: 'Brendan', email: 'brendan@gmail.com', password: 'Showtimes456$'},
    {username: 'Joann', email: 'joann@gmail.com', password: 'Funtimes33%'},
])