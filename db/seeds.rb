# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # User.create(username: 'Nicole', email: 'nicole@gmail.com', password_digest: 'Movies123%')
    # User.create(username: 'Brendan', email: 'brendan@gmail.com', password_digest: 'Showtimes456$')
    # User.create(username: 'Joann', email: 'joann@gmail.com', password_digest: 'Funtimes33%')


    # Movie.create(title: 'Quantum of Solice', length: '1h 46m')
    # Movie.create(title: 'The Sleep Over', length: '1h 43m')
    # Movie.create(title: 'Top Gun', length: '1h 49m')
    # Movie.create(title: 'Spider Man 3', length: '2h 19m')
    # Movie.create(title: 'How To Train Your Dragon', length: '1h 37m')
    # Movie.create(title: 'Shrek', length: '1h 30m')
    # Movie.create(title: 'The Addams Family (2019)', length: '1h 26m')
    # Movie.create(title: 'Captain America: The First Avenger', length: '2h 4m')
    # Movie.create(title: 'The Holiday', length: '2h 15m')

    Genre.build(name: 'Action & Adventure', movie_id: 1)
    Genre.create(name: 'Action Comedy', movie_id: 2)
    Genre.create(name: 'Action', movie_id: 3)
    Genre.create(name: 'Drama', movie_id: 3)
    Genre.create(name: 'Action', movie_id: 4)
    Genre.create(name: 'Science Fiction', movie_id: 4)
    Genre.create(name: 'Kids', movie_id: 5)
    Genre.create(name: 'Action', movie_id: 6)
    Genre.create(name: 'Adventure', movie_id: 6)
    Genre.create(name: 'Kids', movie_id: 6)
    Genre.create(name: 'Comedy', movie_id: 6)
    Genre.create(name: 'Animation', movie_id: 7)
    Genre.create(name: 'Kids', movie_id: 7)
    Genre.create(name: 'Comedy', movie_id: 7)
    Genre.create(name: 'Action', movie_id: 8)
    Genre.create(name: 'Adventure', movie_id: 8)
    Genre.create(name: 'Comedy', movie_id: 9)
    Genre.create(name: 'Romance', movie_id: 9)