require_relative 'movie'

class Playlist
  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    number_rolled = roll_die
    puts "#{@name}'s playlist:"
    puts @movies
    @movies.each do |movie|
      if number_rolled < 3
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down"
      elsif number_rolled < 5
        puts "#{movie.title} was skipped"
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up"
      end
    end
  end
end