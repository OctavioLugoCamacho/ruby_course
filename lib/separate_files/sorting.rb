require_relative 'movie'

movie1 = Movie.new("batman", 10)
movie2 = Movie.new("superman", 3)
movie3 = Movie.new("aquaman", 7)

movies = [movie1, movie2, movie3]
puts movies.sort
