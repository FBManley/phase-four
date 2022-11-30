# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#ADD METHOD TO DELETE PREVIOUSLY SEEDED DATA TO AVOID REPEATS 
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Above is how to create instances of a class by passing in an array of hashes, hashes will contain attributes required for every insance of our model
# .create and passing in instancves for each Character class

# Movie.create(title: "Gorp", genre: "action")
# Movie.create(title: "Gorp II: Reloaded", genre: "comedy")
# Movie.create(title: "Gorp III: The Reckoning", genre: "drama")
# OR    make an array that conatains hashes-> each hash would represnet each individual instance
Movie.create([{title: "Gorp", genre: "action", rating: 5, would_watch_again: true}])
# rake db:seed 
# rake console
# Movie.all or Movie.all.length to check seed data is there
# Movie.create(title: Faker::Movie.title, genre: "action")
