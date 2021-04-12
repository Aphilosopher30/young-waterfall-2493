require 'rails_helper'

RSpec.describe Movie do
  describe 'relationships' do
    it {should belong_to :studio}
    it {should have_many :actor_movies}
    it {should have_many(:actors).through(:actor_movies)}

  end

  describe "actors" do
    studio_a = Studio.create!(name: "A1 picts", location: "west")

    movie_1 = studio_a.movies.create!(title: "gone with wind", creation_year: 1943, genre: "drama")

    actor_a = Actor.create!(name: "andrew", age: 30, currently_working: false)
    actor_b= Actor.create!(name: "balthazar", age: 29, currently_working: true)
    actor_c= Actor.create!(name: "charly", age: 33, currently_working: true)
    actor_d= Actor.create!(name: "dany", age: 59, currently_working: false)
    actor_e= Actor.create!(name: "egbert", age: 40, currently_working: false)
    actor_f= Actor.create!(name: "fredy", age: 45, currently_working: true)

    actor_movie_1a = ActorMovie.create!(movie: movie_1, actor: actor_a)
    actor_movie_1b = ActorMovie.create!(movie: movie_1, actor: actor_b)
    actor_movie_1c = ActorMovie.create!(movie: movie_1, actor: actor_c)
    actor_movie_1d = ActorMovie.create!(movie: movie_1, actor: actor_d)

    expect(movie_1.actors).to eq([actor_a, actor_b, actor_c, actor_d])


  end
end
