class Studio < ApplicationRecord
  has_many :movies

  # def get_actors
  #   actor_lsit = []
  #   self.movies.each do |movie|
  #     actor_lsit << movie.actors
  #   end
  #   actor_lsit.flatten.uniq
  # end
end
