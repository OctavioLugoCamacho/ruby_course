class Movie
  def initialize(title, rank = 0)
    @title = title.capitalize
    @therank = rank
  end
  def to_s
    "#{@title} has a rank of #{@therank}"
  end
end

movie1 = Movie.new("star wars", 10)
movie2 = Movie.new("batman", 8)
movie3 = Movie.new("avengers", 9)

movies = [movie1, movie2, movie3]

movies.each do |movie|
  puts movie
end

#Exercise
class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

players = [player1, player2, player3]

puts "There are #{players.size} players in the game:"

players.each do |player|
  puts player
end

players.each do |player|
  puts player.health
end