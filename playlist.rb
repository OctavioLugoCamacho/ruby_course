require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'

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

    snacks = SnackBar::SNACKS
    puts "\nThere are #{snacks.size} snacks available"

    snacks.each do |snack|
      puts "#{snack.name} has a price of $#{snack.carbs}"
    end

    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        snack = SnackBar.random
        puts "#{movie.title} led to #{snack.carbs} #{snack.name} carbs being consumed."
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