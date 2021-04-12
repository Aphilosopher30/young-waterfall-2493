# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Movie.destroy_all
Actor.destroy_all
ActorMovie.destroy_all
Studio.destroy_all


studio_a = Studio.create!(name: "A1 picts", location: "west")
studio_b = Studio.create!(name: "B movies inc", location: "west")
studio_c = Studio.create!(name: "studio c", location: "utah")

movie_1 = studio_a.movies.create!(title: "gone with wind", creation_year: 1943, genre: "drama")
movie_2 = studio_a.movies.create!(title: "avitar", creation_year: 2000, genre: "adventure")
movie_3 = studio_a.movies.create!(title: "seven samurai", creation_year: 1966, genre: "drama")
movie_4 = studio_b.movies.create!(title: "lady hawk", creation_year: 1970, genre: "adventure")
movie_5 = studio_b.movies.create!(title: "b movie", creation_year: 2003, genre: "comedy")


actor_a = Actor.create!(name: "andrew", age: 30, currently_working: false)
actor_b= Actor.create!(name: "balthazar", age: 29, currently_working: true)
actor_c= Actor.create!(name: "charly", age: 33, currently_working: true)
actor_d= Actor.create!(name: "dany", age: 59, currently_working: false)
actor_e= Actor.create!(name: "egbert", age: 40, currently_working: false)
actor_f= Actor.create!(name: "fredy", age: 45, currently_working: true)
actor_g= Actor.create!(name: "george", age: 20, currently_working: true)
actor_h= Actor.create!(name: "hiro", age: 16, currently_working: true)
actor_i= Actor.create!(name: "john", age: 100, currently_working: false)

actor_movie_1a = ActorMovie.create!(movie: movie_1, actor: actor_a)
actor_movie_1b = ActorMovie.create!(movie: movie_1, actor: actor_b)
actor_movie_1c = ActorMovie.create!(movie: movie_1, actor: actor_c)
actor_movie_1d = ActorMovie.create!(movie: movie_1, actor: actor_d)

actor_movie_2a = ActorMovie.create!(movie: movie_2, actor: actor_a)
actor_movie_2b = ActorMovie.create!(movie: movie_2, actor: actor_b)
actor_movie_2e = ActorMovie.create!(movie: movie_2, actor: actor_e)
actor_movie_2f = ActorMovie.create!(movie: movie_2, actor: actor_f)

actor_movie_4e = ActorMovie.create!(movie: movie_4, actor: actor_e)
actor_movie_4f = ActorMovie.create!(movie: movie_4, actor: actor_f)
actor_movie_4g = ActorMovie.create!(movie: movie_4, actor: actor_g)
