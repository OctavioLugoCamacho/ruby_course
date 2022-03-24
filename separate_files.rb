require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("star wars", 10)
movie2 = Movie.new("batman", 8)
movie3 = Movie.new("avengers")

playlist1 = Playlist.new("Octavio")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Tobias")
playlist2.add_movie(movie3)
movie4 = Movie.new("deadpool", 15)
playlist2.add_movie(movie4)
playlist2.play