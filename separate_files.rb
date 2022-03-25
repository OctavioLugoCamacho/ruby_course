require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("star wars", 10)
movie2 = Movie.new("batman", 9)
movie3 = Movie.new("avengers")

playlist1 = Playlist.new("Octavio")
playlist1.add_movie(movie1)
playlist1.add_movie(movie3)
playlist1.add_movie(movie2)
playlist1.play(3)
playlist1.print_stats