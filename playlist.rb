require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play(viewings)
    puts "#{@name}'s playlist:"
    puts @movies.sort
    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        puts movie
      end
    end
  end

  def print_stats
    puts "\n#{@name}'s Stats:"
    hits, flops = @movies.partition { |movie| movie.hit? }
    puts "\nHits:"
    puts hits.sort
    puts "\nFlops:"
    puts flops.sort
  end
end