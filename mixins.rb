module Rankable
  def thumbs_up
    puts "#{@title} got a thumbs up!"
  end
end

class Movie
  include Rankable
  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

class Song
  include Rankable
  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

movie = Movie.new("Batman",10)
movie.thumbs_up
song = Song.new("Ritual",10)
song.thumbs_up