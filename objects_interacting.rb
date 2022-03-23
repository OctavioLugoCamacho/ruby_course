class Movie
  def initialize(title, rank = 0)
    @title = title.capitalize
    @therank = rank
  end

  def thumbs_up
    @therank += 1
  end

  def thumbs_down
    @therank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@therank}"
  end
end

class Playlist
  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies
    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end
  end
end

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

#Execises
class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(a_player)
    @players << a_player
  end

  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end

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

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play
