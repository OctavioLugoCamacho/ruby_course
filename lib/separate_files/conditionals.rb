require_relative 'movie'

movie = Movie.new("batman", 10)

if movie.therank >= 10
  puts "Good"
else
  puts "Bad"
end